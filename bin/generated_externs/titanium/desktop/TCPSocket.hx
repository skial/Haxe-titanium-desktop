package titanium.desktop;
@:native("Titanium.Network.TCPSocket")
extern class TCPSocket {
	static function close():Bool;
	static function connect():String;
	static function isClosed():Bool;
	static function onError(onError:Dynamic):String;
	static function onRead(onRead:Dynamic):String;
	static function onReadComplete(onReadComplete:Dynamic):String;
	static function onTimeout(onTimeout:Dynamic):String;
	static function onWrite(onWrite:Dynamic):String;
	static function write(data:String):Bool;
}