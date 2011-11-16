package titanium.desktop;
@:native("Titanium.Process.Pipe")
extern class Pipe {
	static function attach():String;
	static function close():String;
	static function detach():String;
	static function isAttached():Bool;
	static function write(data:Bytes):Float;
}