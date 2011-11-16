package titanium.desktop;
@:native("Titanium.Filesystem.File")
extern class File {
	static function copy(target:File):Void;
	static function createDirectory():Bool;
	static function createShortcut(target:File):Bool;
	static function createTimestamp():Float;
	static function deleteDirectory(recursive:Bool):Bool;
	static function deleteFile():String;
	static function exists():Bool;
	static function extension():String;
	static function getDirectoryListing():Array<File>;
	static function isDirectory():Bool;
	static function isExecutable():Bool;
	static function isFile():Bool;
	static function isHidden():Bool;
	static function isReadonly():String;
	static function isSymbolicLink():Bool;
	static function isWritable():Bool;
	static function modificationTimestamp():Float;
	static function move(target:File):String;
	static function nativePath():String;
	static function open(?mode:Float, ?binary:Bool, ?append:Bool):Filestream;
	static function parent():File;
	static function read():Bytes;
	static function readLine():String;
	static function rename(newPath:String):String;
	static function resolve(subPath:String):File;
	static function setExecutable():Bool;
	static function setReadonly():Bool;
	static function setWritable():Bool;
	static function size():Float;
	static function spaceAvailable():Float;
	static function toString():String;
	static function touch():Bool;
	static function unzip(destination:File):Bool;
	static function write(data:Bytes):String;
}