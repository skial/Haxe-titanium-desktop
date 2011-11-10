package titanium.network;
@:native("Titanium.Network.TCPSocket")
extern class TCPSocket {
	public function new():Void;
	public function close():Bool;
	public function connect():String;
	public function isClosed():Bool;
	public function onError(onError:Dynamic):String;
	public function onRead(onRead:Dynamic):String;
	public function onReadComplete(onReadComplete:Dynamic):String;
	public function onTimeout(onTimeout:Dynamic):String;
	public function onWrite(onWrite:Dynamic):String;
	public function write(data:String):Bool;
}