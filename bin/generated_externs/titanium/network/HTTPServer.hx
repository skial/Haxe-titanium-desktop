package titanium.network;
@:native("Titanium.Network.HTTPServer")
extern class HTTPServer {
	public function new():Void;
	public function bind(port:Float, address:String, callback:Dynamic):String;
	public function close():String;
	public function isClosed():Bool;
}