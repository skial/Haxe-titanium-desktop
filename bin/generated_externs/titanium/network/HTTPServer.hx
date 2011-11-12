package titanium.network;
@:native("Titanium.Network.HTTPServer")
extern class HTTPServer {
	public function new():Void;
	public var bind:Float->String->Dynamic->String;
	public function close():String;
	public function isClosed():Bool;
}