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

class Main implements Hocco {
	
	/**
	 * This can process all the yaml files from the Appcelerator Titanium Desktop documents folder, and generate clean extern classes for Haxe.
	 */
	public static var __reademe__:String;
	
	/**
	 * ## The Beginning ##
	 * Here we fill the return types hash with equal javascript return types. Then we decode four yaml files for later use.
	 */
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
	
	/**
	 * Location to all Titanium yaml files.
	 */
	public static var APIDOC:String = '../apidoc/';
	
	/**
	 * Location to the root yaml file.
	 */
	public static var TITANIUM:String = APIDOC + 'Titanium.yml';
	
	/**
	 * Location to the output directory.
	 */
	public static var OUTPUT:String = './generated_externs/';
	
	/**
	 * Hash object which contains matching javascript types.
	 */
	public static var returnTypes:Hash<String> = new Hash<String>();
	
	/**
	 * Hash object which contains all ```HXClass``` objects.
	 */
	public static var externs:Hash<HXClass> = new Hash<HXClass>();
	
	/**
	 * Contains bad words.
	 */
	public static var badUpperCase:Array<String> = [];
	
	/**
	 * Contains all Haxe keywords.
	 */
	public static var keywords:Array<String> = [];
	
	/**
	 * Hash object contains all imports needed by the current class being parsed.
	 */
	public static var currentImports:Hash<String>;
	
	/**
	 * Contains missing code, used to patch extern files.
	 */
	public static var missingCode:Array<String> = [];
	
	/**
	 * Contains all packages that either done exists or need patching.
	 */
	public static var offendingPackages:Array<String> = [];

	/**
	 * Parse the base yaml file used for generating Appcelerator Titanium Desktop docs. Then start generating extern classes.
	 */
	public function new() {
		this.parseYAML(TITANIUM);
		this.generateOutput();
	}
	
	/**
	 * Once all yaml files have been parsed, we can generated the Haxe extern classes.
	 */
	public function generateOutput():Void {
		for (n in externs) {
			this.generateHaxeClass(n);
		}
	}
	
	/**
	 * First we load the file via the passed path string. Then we decode the yaml file and get the result, which is then cleaned up.
	 * 
	 * We then check the objects type and pass it to the correct function for parsing.
	 */
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
	
	/**
	 * We check to see if the namespace is a package path or not. If not it's normally ```Titanium.yml```, the first yaml file to be processed. All other yaml files are processed in the ```else``` statement.
	 * 
	 * The modules namespace is split and checked to see if it starts with ```titanium```. If ```true``` then insert ```desktop``` into the namespace, else remove ```desktop``` if it exists.
	 * 
	 * Each part of the namespace is then checked against the ```badUpperCaseWords.yml``` file and corrected if it matches. Then the modules name is checked against the same list.
	 * 
	 * Then the namespace is joined back together, and the corresponding directory is created.
	 */
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
	
	/**
	 * We take the ```methods``` namespace, split it and grab the last field to get its name. We then grap any parameters the method might have.
	 * 
	 * If any paramerters exist, they are parse and returned to the ```HXFunction``` object. When completed, ```HXFunction``` is added to the current class being processed.
	 */
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
	
	/**
	 * We take ```property```, split its namespace, grab the last field to get its name, parse ```property``` into ```HXProperty``` and add it to the current class being processed.
	 */
	public function parseProperty(property:Property):Void {
		var ns:Array<String> = property.namespace.split('.');
		var name:String = ns.pop();
		
		currentImports = externs.get(ns.join('.')).imports;
		
		var prop:HXProperty = { description:' * ' + property.description + '\n * @since\t' + property.since + (property.examples != null ? '\n * @example\t' + property.examples : ''), name:name, type:this.parseReturnType(property.returns), stat:property.description.indexOf('constant') == -1 ? (ns.length >= 3?true:false) : true };
		
		externs.get(ns.join('.')).properties.push(prop);
		
	}
	
	/**
	 * We take the ```object```, split its namespace, then grab its name from the last field.
	 * 
	 * Its namespace is then checked to see if ```desktop``` exists. The namespace is then recreated, and checked against the ```offendingPackages.yml``` file.
	 * 
	 * Once that is complete, we create a hash which will contain all this classes imports. It is then assigned to the global ```currentImports``` object, for use in other methods.
	 * 
	 * Then the namespace is checked against the ```badUpperCasewords.yml``` file, and corrected if it matches. Then a ```HXClass``` object is created. Its then added to the externs object.
	 */
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
	
	/**
	 * ## Parse Helpers ##
	 * We just clean up some of the user made errors found in the parsed yaml.
	 */
	public function sanitizeBase(base:Base):Void {
		base.namespace = base.namespace.trim();
		base.since = base.since == null ? 'unknown' : base.since.trim();
		base.description = base.description == null ? '' : base.description.trim();
	}
	
	/**
	 * We take the passed ```type``` and figure out its return type.
	 */
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
	
	/**
	 * We parse the passed ```path``` string to create a return type, pointing to another extern Titanium file. First we split the path and check to see if ```desktop``` exists or not.
	 * 
	 * We then run the name against the ```badUpperCaseWords.yml``` file. The path is then joined back together. We replace any left over ```>``` symbols.
	 * 
	 * Then the new path is checked against the current list of imports to see if it exists. If not, then its added to the list.
	 * 
	 * Then we check it against a list created from the ```offendingPackages.yml``` file. This is a list of packages and class that either dont exist, or are typed wrongly in the Titanium yaml files.
	 */
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
	
	/**
	 * ## Generating Extern Classes ##
	 * Here we generate the extern class for use in Haxe projects. First we create the package, then list all the imports needed, then create the class definition.
	 * 
	 * Once that is done, we loop through each property and method, generating the correct output. Once everything is done, we put the ```content``` into a newly created file.
	 */
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
	
	/**
	 * Here we generate a proptery for the current extern class being created.
	 */
	public function generateHaxeProperty(property:HXProperty, ?force:Bool = false):String {
		var content:String = '\n\t/**\n\t' + property.description.replace('\n', '\n\t') + '\n\t */\n';
		content += '\tpublic ' + (force==false?(property.stat ? 'static ' : ''):'') + 'var ' + property.name + ':' + property.type + ';\n';
		return content;
	}
	
	/**
	 * Here we generate a methods parameter, making it optional if it needs to be.
	 */
	public function generateHaxeParameter(param:HXParams):String {
		return (param.optional == true ? '?' : '') + param.name + ':' + param.type;
	}
	
	/**
	 * Here we generate a method for the current extern class being created. We also do some last minuite checking and parsing to get the output correct.
	 * 
	 * We check each methods parameters to see if it contains a ```|``` symbol. If it does, then we generate an ```@:overload``` statement. 
	 * We also check the methods parameters name against the ```haxeKeywords.yml``` file and add an underscore to its name so it doesnt create any conflicts.
	 * 
	 * Alot of the code below is repeat to make sure it generates the ```@:overload``` statements correctly.
	 */
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
	
	/**
	 * ## @:Overload Helpers ##
	 * Here we try to generate all possible ```@:overload``` outcomes possible.
	 */
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
	
	/**
	 * 
	 */
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
	
	/**
	 * 
	 */
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
	
}