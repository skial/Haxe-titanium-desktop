package titanium.desktop;
@:native("Titanium.Filesystem")
extern class Filesystem {
	static var MODE_APPEND:Float;
	static var MODE_READ:Float;
	static var MODE_WRITE:Float;
	static var asyncCopy:Array<File>->File->Dynamic->AsyncCopy;
	static function createTempDirectory():File;
	static function createTempFile():File;
	static function getApplicationDataDirectory():File;
	static function getApplicationDirectory():File;
	static function getDesktopDirectory():File;
	static function getDocumentsDirectory():File;
	static function getFile(base:File, ?arg:File):File;
	static function getFileStream():Filestream;
	static function getLineEnding():String;
	static function getProgramsDirectory():File;
	static function getResourcesDirectory():File;
	static function getRootDirectories():Array<File>;
	static function getRuntimeHomeDirectory():File;
	static function getSeparator():String;
	static function getUserDirectory():File;
}