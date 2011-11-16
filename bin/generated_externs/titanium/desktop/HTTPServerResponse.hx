package titanium.desktop;
@:native("Titanium.Network.HTTPServerResponse")
extern class HTTPServerResponse {
	static function addCookie(name:String, value:String, ?maxAge:Float, ?domain:String, ?path:String):String;
	static function setContentLength(length:Float):String;
	static function setContentType(type:String):String;
	static function setHeader(name:String, value:String):String;
	static function setReason(reason:String):String;
	static function setStatus(status:String):String;
	static function setStatusAndReason(status:String, reason:String):String;
	static function write(data:String):String;
}