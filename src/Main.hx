package ;
import massive.haxe.log.ILogClient;
import massive.neko.io.FileSys;
import neko.Boot;
import neko.FileSystem;
import neko.io.File;
import neko.Lib;
import nYAML.NYAML;
import nYAML.NYAMLDecoder;

using StringTools;
using Strings;
using Arrays;

/**
 * ...
 * @author Skial Bainn
 */

/* Appcelerator Titanium Desktop Types and Structure */ 
 
typedef Base = {
	var namespace:String;
	var type:String;
	var description:String;
	var since:String;
	var examples:String;
}

typedef Property = { > Base,
	var returns:String;
	var platforms:Array<String>;
}

typedef Func = { > Property,
	var parameters:Array<Array<String>>;
}

/* Haxe extern structure */

typedef HXClass = {
	var ns:String;
	var pck:Array<String>;
	var name:String;
	var functions:Array<HXFunction>;
	var properties:Array<HXProperty>;
	var description:String;
	var imports:Hash<String>;
}

typedef HXFunction = {
	var name:String;
	var params:Array<HXParams>;
	var description:String;
	var returns:String;
	var stat:Bool;
}

typedef HXProperty = {
	var name:String;
	var type:String;
	var stat:Bool;
	var description:String;
}

typedef HXParams = {
	var name:String;
	var type:String;
	var optional:Bool;
	var defaultValue:String;
}

class Main {
	
	public static var APIDOC:String = '../apidoc/';
	public static var TITANIUM:String = APIDOC + 'Titanium.yml';
	public static var OUTPUT:String = './generated_externs/';
	
	public static var returnTypes:Hash<String> = new Hash<String>();
	public static var externs:Hash<HXClass> = new Hash<HXClass>();
	public static var badUpperCase:Array<String> = [];
	public static var keywords:Array<String> = [];
	public static var currentImports:Hash<String>;
	public static var externPatch:Array<String> = [];
	
	public static function main():Void {
		
		returnTypes.set('any', 'Dynamic');
		returnTypes.set('string', 'String');
		returnTypes.set('number', 'Float');
		returnTypes.set('function', 'Dynamic');
		returnTypes.set('object', 'Dynamic');
		returnTypes.set('Object', 'Dynamic');
		returnTypes.set('method', 'Dynamic');
		returnTypes.set('boolean', 'Bool');
		returnTypes.set('bool', 'Bool');
		returnTypes.set('null', 'Null');
		returnTypes.set('void', 'Void');
		returnTypes.set('', 'Void');
		returnTypes.set('null', 'Void');
		/* list is an assocative array */
		returnTypes.set('list', 'Dynamic');
		/* titanium mentions byte which doesnt exists */
		returnTypes.set('byte', 'Dynamic');
		
		badUpperCase = cast NYAML.decode(File.getContent('./badUpperCaseWords.yml'))[0].bad;
		keywords = cast NYAML.decode(File.getContent('./haxeKeywords.yml'))[0].keywords;
		externPatch = cast NYAML.decode(File.getContent('./externPatch.yml'));
		
		new Main();
	}

	public function new() {
		this.parseYAML(TITANIUM);
		this.generateOutput();
	}
	
	public function sanitizeBase(base:Base):Void {
		base.namespace = base.namespace.trim();
		base.since = base.since == null ? 'unknown' : base.since.trim();
		base.description = base.description == null ? '' : base.description.trim();
	}
	
	public function parseYAML(path:String):Void {
		var file:String = neko.io.File.getContent(path);
		var yaml:Base = NYAML.decode(file)[0];
		
		this.sanitizeBase(yaml);
		
		switch(yaml.type) {
			case 'function', 'method':
				this.parseFunction(untyped yaml);
			case 'property':
				this.parseProperty(untyped yaml);
			case 'object':
				this.parseObject(yaml);
			case 'module':
				this.parseModule(yaml);
				this.parseObject(yaml);
			default:
				throw 'Ooooh! Looks like I found any unknown type - kung pow! : ' + yaml.type;
		}
		
	}
	
	public function parseModule(module:Base):Void {
		var folder:String = '';
		
		if (module.namespace.indexOf('.') == -1) {
			
			FileSys.createDirectory(OUTPUT + module.namespace.lcfirst());
			folder = module.namespace;
			
		} else {
			var ns:Array<String> = module.namespace.split('.');
			var name:String = ns.pop();
			
			for (i in 0...ns.length) {
				for (n in badUpperCase) {
					if (ns[i] == n) {
						ns[i] = n.toLowerCase();
						continue;
					}
				}
				ns[i] = ns[i].lcfirst();
			}
			
			for (n in badUpperCase) {
				if (name == n) {
					name = n.toLowerCase();
					break;
				}
			}
			folder = ns.join('/') + '/' + name.lcfirst();
			
			FileSys.createDirectory(OUTPUT + folder);
		}
		
	}
	
	public function parseReturnType(type:String):String {
		if (type == null) {
			return 'Void';
		}
		if (returnTypes.exists(type.toLowerCase())) { 
			return returnTypes.get(type.toLowerCase());
		}
		if (type.indexOf('<') != -1) {
			var returnArray:Array<String> = type.split('<');
			var returnString:String = 'Array<';
			var a:Int = 0;
			for (r in 0...returnArray.length) {
				if (r == 0) {
					continue;
				} 
				
				if (returnArray[r].indexOf('Array') != -1) {
					returnString += 'Array<';
					++a;
					continue;
				}
				if (returnArray[r].indexOf('.') != -1) {
					returnString += this.parsePackage(returnArray[r]);
					continue;
				}
				returnString += this.parseReturnType(returnArray[r]);
				
			}
			if (returnString.endsWith('>') == false) {
				returnString += '>';
			}
			return returnString;
		}
		if (type.indexOf('|') != -1) {
			var options:Array<String> = type.split('|');
			for (o in options) {
				if (returnTypes.exists(o.toLowerCase()) == false) {
					return this.parseReturnType(o);
				}
			}
		}
		if (type.indexOf('.') != -1) {
			return this.parsePackage(type, false);
		}
		if (type.indexOf(',') != -1) {
			return 'Dynamic';
		}
		return type;
	}
	
	public function parsePackage(path:String, ?pop:Bool = true):String {
		var ns:Array<String> = path.split('.');
		var name:String = ns.pop();
		for (i in 0...ns.length) {
			for (n in badUpperCase) {
				if (ns[i] == n) {
					ns[i] = n.toLowerCase();
					continue;
				}
			}
			ns[i] = ns[i].lcfirst();
		}
		var val:String = ns.join('.') + '.' + name;
		val = val.replace('>', '');
		if (!currentImports.exists(val) && val.indexOf('|') == -1) {
			currentImports.set(val, val);
		}
		if (pop) {
			return name;
		} else {
			return val.startsWith('titanium') ? val : 'titanium.' + val;
		}
	}
	
	public function parseFunction(method:Func):Void {
		var ns:Array<String> = method.namespace.split('.');
		var name:String = ns.pop();
		var parameters:Array<Array<String>> = method.parameters;
		
		currentImports = externs.get(ns.join('.')).imports;
		
		var func:HXFunction = { name:name, params:[], description:' * ' + method.description.replace('\n', '\n * '), returns:this.parseReturnType(method.returns), stat:false };
		
		if (parameters != null) {
			if (parameters.length != 0) {
				for (param in parameters) {
					
					var p:HXParams = { name:param[1] == '...' ? 'arg' : param[1], type:this.parseReturnType(param[0]), optional:param.length > 2 ? param[2].indexOf('optional') != -1 ? true : false : false, defaultValue:'' };
					func.params.push(p);
					func.description += '\n * @param\t' + param[1] + (param[2] != null ? '\t' + param[2].replace('\n', '\n * ') : '');
					
				}
			}
		}
		
		func.description += '\n * @return\t' + func.returns + '\n * @since\t' + method.since + (method.examples != null ? '\n * @example\t' + (try { untyped cast(method.examples[0].code, String).replace('\n', '\n\t'); } catch (e:Dynamic) { method.examples; }) : '');
		
		externs.get(ns.join('.')).functions.push(func);
		
	}
	
	public function parseProperty(property:Property):Void {
		var ns:Array<String> = property.namespace.split('.');
		var name:String = ns.pop();
		
		currentImports = externs.get(ns.join('.')).imports;
		
		var prop:HXProperty = { description:' * ' + property.description + '\n * @since\t' + property.since + (property.examples != null ? '\n * @example\t' + property.examples : ''), name:name, type:this.parseReturnType(property.returns), stat:property.description.indexOf('constant') == -1 ? false : true };
		
		externs.get(ns.join('.')).properties.push(prop);
		
	}
	
	public function parseObject(object:Base):Void {
		var ns:Array<String> = object.namespace.split('.');
		var name:String = ns.pop();
		var imports:Hash<String> = new Hash<String>();
		
		currentImports = imports;
		
		for (i in 0...ns.length) {
			for (n in badUpperCase) {
				if (ns[i] == n) {
					ns[i] = n.toLowerCase();
					continue;
				}
			}
			ns[i] = ns[i].lcfirst();
		}
		
		var cls:HXClass = { imports:imports, ns:object.namespace, pck:ns, name:name, functions:[], properties:[], description:' * ' + object.description + '\n * @since\t' + object.since + (object.examples != null ? '\n * @example\t' + object.examples : '') };
		
		externs.set(object.namespace, cls);
		
		ns = object.namespace.split('.');
		
		var folder:String = ns.length == 0 ? name : ns.join('/');
		
		if (FileSys.exists(APIDOC + folder) && FileSys.isDirectory(APIDOC + folder)) {
			var contents:Array<String> = FileSys.readDirectory(APIDOC + folder);
			for (item in contents) {
				if (!FileSys.isDirectory(APIDOC + folder + '/' + item)) {
					this.parseYAML(APIDOC + folder + '/' + item);
				}
			}
		}
	}
	
	public function generateOutput():Void {
		for (n in externs) {
			this.generateHaxeClass(n);
		}
	}
	
	public function generateHaxeClass(cls:HXClass):Void {
		var content:String = '';
		
		var pck:String = cls.pck.join('.');
		
		content += 'package ' + pck + ';\n';
		for (i in cls.imports.keys()) {
			content += 'import ' + (i.startsWith('titanium') ? i + ';\n' : 'titanium.' + i + ';\n');
		}
		content += '/**\n' + cls.description + '\n */\n';
		content += '@:native("' + cls.ns + '")\n';
		content += 'extern class ' + cls.name + ' {\n';
		
		for (n in externPatch) {
			if (Reflect.hasField(n, cls.name)) {
				content += Reflect.field(n, cls.name) + '\n';
			}
		}
		
		for (p in cls.properties) {
			content += this.generateHaxeProperty(p);
		}
		//content += '\tpublic function new():Void;\n';
		for (f in cls.functions) {
			content += this.generateHaxeFunction(f);
		}
		content += '}';
		
		var file = File.write(OUTPUT + cls.pck.join('/') + '/' + cls.name + '.hx', false);
		file.writeString(content);
		file.close();
	}
	
	public function generateHaxeProperty(property:HXProperty):String {
		var content:String = '\n\t/**\n\t' + property.description.replace('\n', '\n\t') + '\n\t */\n';
		//content += '\tpublic ' + (property.stat ? 'static ' : '') + 'var ' + property.name + ':' + property.type + ';\n';
		content += '\tpublic static ' + 'var ' + property.name + ':' + property.type + ';\n';
		return content;
	}
	
	public function generateHaxeFunction(method:HXFunction):String {
		var output:String = '';
		var val:String = '';
		var alt:Bool = false;
		var methodOverload:Bool = false;
		var methodOverloadArray:Array<String> = [];
		var paramOverload:Bool = false;
		var paramOverloadArray:Array<Array<String>> = [];
		
		if (method.returns.indexOf('|') != -1) {
			methodOverload = true;
			methodOverloadArray = method.returns.split('|');
		}
		
		for (p in method.params) {
			if (p.type.indexOf('|') != -1) {
				paramOverload = true;
				paramOverloadArray.push(p.type.split('|'));
			} else {
				paramOverloadArray.push([p.type]);
			}
		}
		
		for (p in method.params) {
			for (n in keywords) {
				if (p.name == n) {
					alt = true;
					break;
				}
			}
		}
		
		if (alt == false) {
			
			//val = 'public ' + (method.stat ? 'static ' : '') + 'function ' + method.name + '(';
			val = 'public static ' + 'function ' + method.name + '(';
			
			for (p in 0...method.params.length) {
				val += (val.endsWith('(') == false ? ', ' : '');
				if (paramOverload == true) {
					val += (method.params[p].optional == true ? '?' : '') + method.params[p].name + ':' + '$' + p;
				} else {
					val += (method.params[p].optional == true ? '?' : '') + method.params[p].name + ':' + method.params[p].type;
				}
			}
			
			if (methodOverload == true) {
				val += '):$r';
			} else {
				val += '):' + method.returns;
			}
			
		} else {
			
			//val = 'public '  + (method.stat ? 'static ' : '') + 'var ' + method.name + ':';
			val = 'public static ' + 'var ' + method.name + ':';
			if (method.params.length == 0) {
				val += 'Void';
			} else {
				for (p in 0...method.params.length) {
					
					val += (val.endsWith(':') == false ? '->' : '');
					if (paramOverload == true) {
						val += '$' + p;
					} else {
						val += method.params[p].type;
					}
					
				}
			}
			
			if (methodOverload == true) {
				val += '->$r';
			} else {
				val += '->' + method.returns;
			}
			
		}
		
		output += '\n\t/**\n\t' + method.description.replace('\n', '\n\t') + '\n\t */\n';
		
		if (paramOverload == true) {
			var sorted:Array<Array<String>> = this.processOverloadTypes(paramOverloadArray);
			for (item in sorted) {
				if (item != sorted.last()) {
					output += '\t@:overload(' + val.replace('public static', '') + '{})\n';
				} else {
					output += '\t' + val + ';\n';
				}
				for (i in 0...item.length) {
					output = output.replace('$' + i, item[i]);
				}
			}
		} else if (methodOverload == true) { 
			for (item in methodOverloadArray) {
				if (item != methodOverloadArray.last()) {
					output += '\t@:overload(' + val.replace('public static', '') + '{})\n';
				} else {
					output += '\t' + val + ';\n';
				}
				output = output.replace('$r', this.parseReturnType(item));
			}
		} else {
			output += '\t' + val + ';';
		}
		
		if (output.endsWith('\n') == false) {
			output += '\n';
		}
		
		return output;
	}
	
	public function processOverloadTypes(array:Array<Array<String>>):Array<Array<String>> {
		var copy = array.copy();
		var length:Int = 0;
		for (i in copy) {
			if (i.length >= length) {
				length = i.length;
			}
		}
		var result:Array<Array<String>> = [];
		var count = 0;
		this.generateOverloadTypes(result, copy, length-1, count);
		return result;
	}
	
	public function generateOverloadTypes(parent:Array<Array<String>>, array:Array<Array<String>>, length:Int, count:Int = 0):Void {
		var current:Array<String> = new Array<String>();
		var i:Int = count;
		for (a in array) {
			current.push(a[count] == null ? this.parseReturnType(a.last()) : this.parseReturnType(a[count]));
		}
		var check:Bool = false;
		for (v in parent) {
			if (v.join('') == current.join('')) {
				check = true;
				break;
			}
		}
		if (check == false) {
			parent.push(current);
		}
		if (count < length) {
			i++;
			this.generateOverloadTypes(parent, array, length, i);
		} else if (count == length) {
			this.generateStaggeredOverloadTypes(parent, array, length);
		}
	}
	
	public function generateStaggeredOverloadTypes(parent:Array<Array<String>>, array:Array<Array<String>>, length:Int, count:Int = 0, stagger:Int = 0):Void {
		var current:Array<String> = new Array<String>();
		var i:Int = count;
		var s:Int = stagger;
		for (a in array) {
			current.push(a[s] == null ? this.parseReturnType(a.last()) : this.parseReturnType(a[s]));
			s++;
		}
		var check:Bool = false;
		for (v in parent) {
			if (v.join('') == current.join('')) {
				check = true;
				break;
			}
		}
		if (check == false) {
			parent.push(current);
		}
		if (count < length) {
			i++;
			this.generateStaggeredOverloadTypes(parent, array, length, i, stagger + 1);
		}
	}
	
	public function generateHaxeParameter(param:HXParams):String {
		return (param.optional == true ? '?' : '') + param.name + ':' + param.type;
	}
	
}