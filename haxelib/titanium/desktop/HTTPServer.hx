package titanium.desktop;
@:native("Titanium.Network.HTTPServer")
extern class HTTPServer {
	static var bind:Float->String->Dynamic->String;
	static function close():String;
	static function isClosed():Bool;
}