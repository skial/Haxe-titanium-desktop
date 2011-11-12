package titanium.network;
titanium.filesystem.File;
titanium.network.HTTPCookie;
@:native("Titanium.Network.HTTPClient")
extern class HTTPClient {
	public var connected:String;
	public var dataReceived:String;
	public var dataSent:String;
	public var DONE:String;
	public var HEADERS_RECEIVED:String;
	public var LOADING:String;
	public var ondatastream:String;
	public var onload:String;
	public var onreadystatechange:String;
	public var onsendstream:String;
	public var OPENED:String;
	public var readyState:String;
	public var responseData:String;
	public var responseText:String;
	public var responseXML:String;
	public var status:String;
	public var statusText:String;
	public var timedOut:String;
	public var UNSENT:String;
	public var url:String;
	public var userAgent:String;
	public function new():Void;
	public function abort():String;
	public function clearCookies():String;
	public function getCookie(name:String):HTTPCookie;
	public function getMaxRedirects():Float;
	public function getResponseHeader(name:String):String;
	public function getResponseHeaders():Array<Array<String, String>>;
	public function getTimeout():Float;
	public function open(method:String, url:String, asynchronous:Bool, username:String, password:String):Bool;
	@:overload(public function receive(handler:Dynamic, data:Dynamic):Bool{})
	@:overload(public function receive(handler:Dynamic, data:String):Bool{})
	public function receive(handler:Dynamic, data:Void):Bool;
	@:overload(public function send(data:Dynamic):Bool{})
	@:overload(public function send(data:String):Bool{})
	public function send(data:Void):Bool;
	public function sendFile(file:File):String;
	public function setBasicCredentials(username:String, password:String):String;
	public function setCookie(name:String, value:String):String;
	public function setCredentials(username:String, password:String):String;
	public function setMaxRedirects(amount:Float):String;
	public function setRequestHeader(header:String, value:String):String;
	public function setTimeout(timeout:Float):String;
}