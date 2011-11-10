package titanium.network;
@:native("Titanium.Network.HTTPServerRequest")
extern class HTTPServerRequest {
	public function new():Void;
	public function getContentLength():Float;
	public function getContentType():String;
	public function getHeader(header:String, header:String):String;
	public function getHeaders():String;
	public function getMethod():String;
	public function getURI():String;
	public function getVersion():String;
	public function hasHeader(header:String):Bool;
	public function read(length:Float):String;
}