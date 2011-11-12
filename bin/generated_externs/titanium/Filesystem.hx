package titanium;
titanium.filesystem.AsyncCopy;
titanium.filesystem.File;
titanium.filesystem.Filestream;
@:native("Titanium.Filesystem")
extern class Filesystem {
	public static var MODE_APPEND:Float;
	public static var MODE_READ:Float;
	public static var MODE_WRITE:Float;
	public function new():Void;
	public var asyncCopy:Array<File>->File->Dynamic->AsyncCopy;
	public function createTempDirectory():File;
	public function createTempFile():File;
	public function getApplicationDataDirectory():File;
	public function getApplicationDirectory():File;
	public function getDesktopDirectory():File;
	public function getDocumentsDirectory():File;
	public function getFile(base:File, arg:File):File;
	public function getFileStream():Filestream;
	public function getLineEnding():String;
	public function getProgramsDirectory():File;
	public function getResourcesDirectory():File;
	public function getRootDirectories():Array<File>;
	public function getRuntimeHomeDirectory():File;
	public function getSeparator():String;
	public function getUserDirectory():File;
}