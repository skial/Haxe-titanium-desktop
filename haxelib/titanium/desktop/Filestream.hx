package titanium.desktop;
@:native("Titanium.Filesystem.Filestream")
extern class Filestream {
	static var MODE_APPEND:Float;
	static var MODE_READ:Float;
	static var MODE_WRITE:String;
	static function close():Bool;
	static function isOpen():Bool;
	static function open(?mode:Float, ?binary:Bool, ?append:Bool):Bool;
	static function read(size:Int):Bytes;
	static function readLine():Bytes;
	static function ready():Bool;
	static function seek(offset:Int, dir:Int):Void;
	static function tell():Int;
	static function write(data:Bytes):Bool;
	static function writeLine(data:Bytes):Bool;
}