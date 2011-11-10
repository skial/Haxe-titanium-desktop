package titanium.network;
@:native("Titanium.Network.HTTPServerResponse")
extern class HTTPServerResponse {
	public function new():Void;
	public function addCookie(name:String, value:String, maxAge:Float, domain:String, path:String):String;
	public function setContentLength(length:Float):String;
	public function setContentType(type:String):String;
	public function setHeader(name:String, value:String):String;
	public function setReason(reason:String):String;
	public function setStatus(status:String):String;
	public function setStatusAndReason(status:String, reason:String):String;
	public function write(data:String):String;
}