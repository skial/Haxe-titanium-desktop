package titanium.desktop;
@:native("Titanium.Network.HTTPClient")
extern class HTTPClient {
	static var connected:String;
	static var dataReceived:String;
	static var dataSent:String;
	static var DONE:String;
	static var HEADERS_RECEIVED:String;
	static var LOADING:String;
	static var ondatastream:String;
	static var onload:String;
	static var onreadystatechange:String;
	static var onsendstream:String;
	static var OPENED:String;
	static var readyState:String;
	static var responseData:String;
	static var responseText:String;
	static var responseXML:String;
	static var status:String;
	static var statusText:String;
	static var timedOut:String;
	static var UNSENT:String;
	static var url:String;
	static var userAgent:String;
	static function abort():String;
	static function clearCookies():String;
	static function getCookie(name:String):HTTPCookie;
	static function getMaxRedirects():Float;
	static function getResponseHeader(name:String):String;
	static function getResponseHeaders():Array<Array<Dynamic>>;
	static function getTimeout():Float;
	static function open(method:String, url:String, ?asynchronous:Bool, ?username:String, ?password:String):Bool;
	@:overload(function(handler:Dynamic, ?data:Dynamic):Bool{})
	@:overload(function(handler:Dynamic, ?data:String):Bool{})
	static function receive(handler:Dynamic, ?data:Void):Bool;
	@:overload(function(?data:Dynamic):Bool{})
	@:overload(function(?data:String):Bool{})
	static function send(?data:Void):Bool;
	static function sendFile(file:File):String;
	static function setBasicCredentials(username:String, password:String):String;
	static function setCookie(name:String, value:String):String;
	static function setCredentials(username:String, password:String):String;
	static function setMaxRedirects(amount:Float):String;
	static function setRequestHeader(header:String, value:String):String;
	static function setTimeout(timeout:Float):String;
}