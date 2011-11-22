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
	var type:String;
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
	public static var missingCode:Array<String> = [];
	public static var offendingPackages:Array<String> = [];
	
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
		returnTypes.set('array', 'Array<Dynamic>');
		returnTypes.set('integer', 'Int');
		returnTypes.set('int', 'Int');
		returnTypes.set('undefined', 'Void');
		returnTypes.set('domwindow', 'js.Dom.Window');
		
		badUpperCase = cast NYAML.decode(File.getContent('./badUpperCaseWords.yml'))[0].bad;
		keywords = cast NYAML.decode(File.getContent('./haxeKeywords.yml'))[0].keywords;
		missingCode = cast NYAML.decode(File.getContent('./missingCode.yml'));
		offendingPackages = cast NYAML.decode(File.getContent('./offendingPackages.yml'));
		
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
			/*case 'object':
				this.parseObject(yaml);*/
			case 'module', 'object':
				this.parseModule(yaml);
				this.parseObject(yaml);
			default:
				throw 'Ooooh! Looks like I found any unknown type - kung pow! : ' + yaml.type;
		}
		
	}
	
	public function parseModule(module:Base):Void {
		var folder:String = '';
		
		if (module.namespace.indexOf('.') == -1) {
			
			folder = module.namespace.lcfirst();
			FileSys.createDirectory(OUTPUT + folder);
			FileSys.createDirectory(OUTPUT + folder + '/desktop');
			
		} else {
			var ns:Array<String> = module.namespace.split('.');
			var name:String = ns.pop();
			
			if (ns.first().toLowerCase() == 'titanium') {
				ns.insert(1, 'desktop');
			} else {
				ns.unshift('desktop');
			}
			
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
			var a:Int = returnArray.length-1;
			for (r in 0...returnArray.length) {
				if (r == 0) {
					continue;
				} 
				
				if (returnArray[r].indexOf('Array') != -1) {
					returnString += 'Array<';
					continue;
				}
				if (returnArray[r].indexOf('.') != -1) {
					returnString += this.parsePackage(returnArray[r]);
					continue;
				}
				returnString += this.parseReturnType(returnArray[r]);
				
			}
			//if (returnString.endsWith('>') == false) {
				returnString = returnString.replace('>', '');
			//}
			returnString += '>'.repeat(a);
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
		
		if (ns.length != 0) {
			if (ns.first().toLowerCase() == 'titanium') {
				if (ns.exists('desktop') == false) {
					ns.insert(1, 'desktop');
				}
			} else {
				if (ns.first().toLowerCase() != 'desktop') {
					ns.unshift('desktop');
				}
			}
		}
		
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
			currentImports.set(val, name);
		}
		var t = (val.startsWith('titanium') ? val : 'titanium.' + val).toLowerCase();
		var r = '';
		for (n in offendingPackages) {
			if (Reflect.hasField(n, t)) {
				if (Reflect.field(n, t) == 'remove') {
					r = 'Dynamic';
					if (currentImports.exists(val)) {
						currentImports.remove(val);
					}
					return r;
				} else {
					r = Reflect.field(n, t);
					if (currentImports.exists(val)) {
						currentImports.remove(val);
						currentImports.set(r, r);
					}
					return r.split('.').pop();
				}
			}
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
		
		var func:HXFunction = { name:name, params:[], description:' * ' + method.description.replace('\n', '\n * '), returns:this.parseReturnType(method.returns), stat:ns.length >= 3 ? false : true };
		
		if (parameters != null) {
			if (parameters.length != 0) {
				for (param in parameters) {
					
					var p:HXParams = { name:(param[1] == '...' ? 'arg' : (param[1].indexOf('|') != -1 ? param[1].split('|')[0] : param[1])), type:param[0].indexOf('|') == -1 ? this.parseReturnType(param[0]) : param[0], optional:param.length > 2 ? param[2].indexOf('optional') != -1 ? true : false : false, defaultValue:'' };
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
		
		var prop:HXProperty = { description:' * ' + property.description + '\n * @since\t' + property.since + (property.examples != null ? '\n * @example\t' + property.examples : ''), name:name, type:this.parseReturnType(property.returns), stat:property.description.indexOf('constant') == -1 ? (ns.length >= 3?true:false) : true };
		
		externs.get(ns.join('.')).properties.push(prop);
		
	}
	
	public function parseObject(object:Base):Void {
		var ns:Array<String> = object.namespace.split('.');
		var name:String = ns.pop();
		
		if (ns.length != 0) {
			if (ns.first().toLowerCase() == 'titanium') {
				ns.insert(1, 'desktop');
			} else {
				ns.unshift('desktop');
			}
		}
		
		var s = ns.join('.') + '.' + name;
		var t = (!s.startsWith('titanium') ? s : 'titanium.' + s).toLowerCase();
		for (n in offendingPackages) {
			if (Reflect.hasField(n, t)) {
				if (Reflect.field(n, t) != 'remove') {
					ns = Reflect.field(n, t).split('.');
					name = ns.pop();
					break;
				}
			}
		}
		
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
		
		var cls:HXClass = { type:object.type, imports:imports, ns:object.namespace, pck:ns, name:name, functions:[], properties:[], description:' * ' + object.description + '\n * @since\t' + object.since + (object.examples != null ? '\n * @example\t' + object.examples : '') };
		
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
		
		for (n in missingCode) {
			if (Reflect.hasField(n, cls.name)) {
				content += Reflect.field(n, cls.name) + '\n';
			}
		}
		
		for (p in cls.properties) {
			content += this.generateHaxeProperty(p, (cls.type == 'object' ? true : false));
		}
		for (f in cls.functions) {
			content += this.generateHaxeFunction(f, (cls.type == 'object' ? true : false));
		}
		content += '}';
		
		var file = File.write(OUTPUT + cls.pck.join('/') + '/' + cls.name + '.hx', false);
		file.writeString(content);
		file.close();
	}
	
	public function generateHaxeProperty(property:HXProperty, ?force:Bool = false):String {
		var content:String = '\n\t/**\n\t' + property.description.replace('\n', '\n\t') + '\n\t */\n';
		content += '\tpublic ' + (force==false?(property.stat ? 'static ' : ''):'') + 'var ' + property.name + ':' + property.type + ';\n';
		return content;
	}
	
	public function generateHaxeFunction(method:HXFunction, ?force:Bool = false):String {
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
					/*alt = true;
					break;*/
					p.name = '_' + p.name;
				}
			}
		}
		
		if (alt == false) {
			
			val = 'public ' + (force==false?(method.stat?'static ' : ''):'') + 'function ' + method.name + '(';
			
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
			/* this is being kept for now just incase another error pops up - but at the moment this code doesnt get used */
			val = 'public ' + (force==false?(method.stat?'static ' : ''):'') + 'var ' + method.name + ':';
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
					output += '\t@:overload(' + val.replace('public ', '').replace('static ', '').replace(' ' + method.name, '') + '{})\n';
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
					output += '\t@:overload(' + val.replace('public ', '').replace('static ', '').replace(' ' + method.name, '') + '{})\n';
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