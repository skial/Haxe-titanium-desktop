package titanium.desktop;
@:native("Titanium.Network.HTTPServerRequest")
extern class HTTPServerRequest {
	static function getContentLength():Float;
	static function getContentType():String;
	static function getHeader(header:String, header:String):String;
	static function getHeaders():String;
	static function getMethod():String;
	static function getURI():String;
	static function getVersion():String;
	static function hasHeader(header:String):Bool;
	static function read(?length:Float):String;
}