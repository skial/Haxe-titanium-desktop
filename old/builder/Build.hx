package ;

/**
 * ...
 * @author Skial Bainn
 */

import massive.neko.cmd.Command;
import massive.neko.io.FileSys;
import massive.neko.io.File;
import massive.neko.haxelib.Haxelib;
import massive.neko.haxelib.HaxelibTools;
import massive.neko.util.ZipUtil;
import neko.Sys;

using Arrays;

class Build extends Command {
	
	public static var IGNORE:Array<String> = ['builder', 'bin', 'src', '.hg', '.git', 'build_output.n', 'changes.txt', 'readme.txt', 'haXe-titanium desktop.hxproj', '.gitignore', 'example', 'compile.hxml', 'README', 'Main.hx'];
	public static var OUTPUT:String = FileSys.getCwd() + 'bin' + File.seperator + 'titaniumdesktop';

	public function new() {
		super();
	}
	
	override public function initialise():Void {
		
	}
	
	override public function execute():Void {
		
		this.print('working');
		
		if (!FileSys.exists(OUTPUT)) {
			
			this.print('/bin/titaniumdesktop does not exist - creating output directory');
			FileSys.createDirectory(OUTPUT);
			
		}
		
		var out:File = File.create(OUTPUT);
		var file:File;
		
		for (n in FileSys.readDirectory(FileSys.getCwd())) {
			
			if (!IGNORE.exists(n)) {
				
				//this.print('now copying directory ' + n + ' contents into ' + OUTPUT);
				
				for (m in FileSys.readDirectory(FileSys.getCwd() + n + File.seperator)) {
					
					file = File.create(FileSys.getCwd() + n + File.seperator + m);
					file.copyInto(out, true);
					
				}
				
			}
			
		}
		
		this.print('creating haxelib.xml');
		
		try {
			FileSys.deleteFile(OUTPUT + File.seperator + 'haxelib.xml');
		} catch (e:Dynamic) {
			
		}
		
		var haxelib = new Haxelib(File.create(OUTPUT + File.seperator + 'haxelib.xml'));
		haxelib.name = 'titaniumdesktop';
		haxelib.url = 'https://github.com/skial/haXe-titanium-desktop';
		haxelib.user = 'skial';
		haxelib.license = 'BSD';
		haxelib.description = 'haXe extern classes for http://www.appcelerator.com/ titanium desktop library.';
		haxelib.version = '0.0.0.0';
		haxelib.versionDescription = 'local test';
		haxelib.save();
		
		this.print('creating titaniumdesktop.zip');
		
		var zip = File.create(OUTPUT + File.seperator + '..' + File.seperator + 'titaniumdesktop.zip');
		ZipUtil.zipDirectory(zip, out);
		
		if(neko.Sys.command("haxelib test " + '"' + zip + '"') > 0) {
			this.print("This might have failed to install " + zip + " to haxelib. Please check");
		}
		
		this.print('all done!');
		
	}
	
}