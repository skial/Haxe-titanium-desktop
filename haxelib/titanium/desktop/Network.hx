package titanium.desktop;
@:native("Titanium.Network")
extern class Network {
	static var online:Bool;
	static function addConnectivityListener(listener:Dynamic):Float;
	static function createHTTPClient():HTTPClient;
	static function createHTTPCookie():HTTPCookie;
	static function createHTTPServer():HTTPServer;
	static function createIPAddress(address:String):IPAddress;
	static function createIRCClient():IRCClient;
	static function createTCPSocket(host:String, port:Float):TCPSocket;
	static function decodeURIComponent(value:String):String;
	static function encodeURIComponent(value:String):String;
	static function getFirstIPAddress():String;
	static function getFirstMACAddress():String;
	static function getHostByAddress(address:String):Host;
	static function getHostByName(name:String):Host;
	@:overload(function():String{})
	static function getHTTPProxy():Void;
	@:overload(function():String{})
	static function getHTTPSProxy():Void;
	static function getInterfaces():Array<Interface>;
	static function removeConnectivityListener(id:Float):String;
	static function setHTTPProxy(hostname:String):String;
	static function setHTTPSProxy(hostname:String):String;
}