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
		
		badUpperCase = cast NYAML.decode(File.getContent('./badUpperCaseWords.yml'))[0].bad;
		keywords = cast NYAML.decode(File.getContent('./haxeKeywords.yml'))[0].keywords;
		
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
				returnString += returnArray[r];
				
			}
			returnString += '>'.repeat(a);
			return returnString;
		}
		if (type.indexOf('.') != -1) {
			return this.parsePackage(type);
		}
		return type;
	}
	
	public function parsePackage(path:String):String {
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
		return ns.join('.') + '.' + name;
	}
	
	public function parseFunction(method:Func):Void {
		var ns:Array<String> = method.namespace.split('.');
		var name:String = ns.pop();
		var parameters:Array<Array<String>> = method.parameters;
		var func:HXFunction = { name:name, params:[], description:method.description, returns:this.parseReturnType(method.returns), stat:false };
		
		if (parameters != null) {
			if (parameters.length != 0) {
				for (param in parameters) {
					
					var p:HXParams = { name:param[1], type:this.parseReturnType(param[0]), optional:param.length > 2 ? param[2].indexOf('optional') != -1 ? true : false : false, defaultValue:'' };
					func.params.push(p);
					
				}
			}
		}
		
		externs.get(ns.join('.')).functions.push(func);
		
	}
	
	public function parseProperty(property:Property):Void {
		var ns:Array<String> = property.namespace.split('.');
		var name:String = ns.pop();
		var prop:HXProperty = { description:property.description, name:name, type:this.parseReturnType(property.returns), stat:property.description.indexOf('constant') == -1 ? false : true };
		
		externs.get(ns.join('.')).properties.push(prop);
		
	}
	
	public function parseObject(object:Base):Void {
		var ns:Array<String> = object.namespace.split('.');
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
		
		var cls:HXClass = { ns:object.namespace, pck:ns, name:name, functions:[], properties:[], description:object.description + '\nsince: ' + object.since };
		
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
	
	public static var tabs:Int = 0;
	
	public function generateOutput():Void {
		for (n in externs) {
			this.generateHaxeClass(n);
		}
	}
	
	public function generateHaxeClass(cls:HXClass):Void {
		var content:String = '';
		
		var pck:String = cls.pck.join('.');
		
		content += 'package ' + pck + ';\n';
		content += '@:native("' + cls.ns + '")\n';
		content += 'extern class ' + cls.name + ' {\n';
		
		for (p in cls.properties) {
			content += this.generateHaxeProperty(p);
		}
		content += '\tpublic function new():Void;\n';
		for (f in cls.functions) {
			content += this.generateHaxeFunction(f);
		}
		content += '}';
		
		var file = File.write(OUTPUT + cls.pck.join('/') + '/' + cls.name + '.hx', false);
		file.writeString(content);
		file.close();
	}
	
	public function generateHaxeProperty(property:HXProperty):String {
		return '\tpublic ' + (property.stat ? 'static ' : '') + 'var ' + property.name + ':' + property.type + ';\n';
	}
	
	public function generateHaxeFunction(method:HXFunction):String {
		var output:String = '\tpublic ' + (method.stat ? 'static ' : '') + 'function ' + method.name + '(';
		for (p in method.params) {
			output += (output.endsWith('(') == false ? ', ' : '');
			output += this.generateHaxeParameter(p);
		}
		output += '):' + method.returns + ';\n';
		return output;
	}
	
	public function generateHaxeParameter(param:HXParams):String {
		return param.name + ':' + param.type;
	}
	
}