package titanium;
@:native("Titanium.Filesystem")
extern class Filesystem {
	public static var MODE_APPEND:Float;
	public static var MODE_READ:Float;
	public static var MODE_WRITE:Float;
	public function new():Void;
	public function asyncCopy(paths:Array<string|Filesystem.file>|String|Filesystem.File, destination:filesystem.File|String, callback:Dynamic):filesystem.AsyncCopy;
	public function createTempDirectory():filesystem.File;
	public function createTempFile():filesystem.File;
	public function getApplicationDataDirectory():filesystem.File;
	public function getApplicationDirectory():filesystem.File;
	public function getDesktopDirectory():filesystem.File;
	public function getDocumentsDirectory():filesystem.File;
	public function getFile(base:filesystem.File|String, ...:filesystem.File|String):filesystem.File;
	public function getFileStream():filesystem.Filestream;
	public function getLineEnding():String;
	public function getProgramsDirectory():filesystem.File;
	public function getResourcesDirectory():filesystem.File;
	public function getRootDirectories():Array<filesystem.File>;
	public function getRuntimeHomeDirectory():filesystem.File;
	public function getSeparator():String;
	public function getUserDirectory():filesystem.File;
}