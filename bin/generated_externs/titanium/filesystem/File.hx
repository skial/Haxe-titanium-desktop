package titanium.filesystem;
@:native("Titanium.Filesystem.File")
extern class File {
	public function new():Void;
	public function copy(target:string|Filesystem.File):Void;
	public function createDirectory():Bool;
	public function createShortcut(target:string|Filesystem.File):Bool;
	public function createTimestamp():Float;
	public function deleteDirectory(recursive:Bool):Bool;
	public function deleteFile():String;
	public function exists():Bool;
	public function extension():String;
	public function getDirectoryListing():Array<filesystem.File>;
	public function isDirectory():Bool;
	public function isExecutable():Bool;
	public function isFile():Bool;
	public function isHidden():Bool;
	public function isReadonly():String;
	public function isSymbolicLink():Bool;
	public function isWritable():Bool;
	public function modificationTimestamp():Float;
	public function move(target:string|Filesystem.File):String;
	public function nativePath():String;
	public function open(mode:Float, binary:Bool, append:Bool):filesystem.Filestream;
	public function parent():filesystem.File;
	public function read():Bytes;
	public function readLine():String;
	public function rename(newPath:String):String;
	public function resolve(subPath:String):filesystem.File;
	public function setExecutable():Bool;
	public function setReadonly():Bool;
	public function setWritable():Bool;
	public function size():Float;
	public function spaceAvailable():Float;
	public function toString():String;
	public function touch():Bool;
	public function unzip(destination:filesystem.File|String):Bool;
	public function write(data:String|Bytes|Number):String;
}