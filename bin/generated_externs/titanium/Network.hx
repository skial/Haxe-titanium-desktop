package titanium;
titanium.network.IPAddress;
titanium.network.TCPSocket;
titanium.network.Host;
titanium.network.Interface;
titanium.network.HTTPClient;
titanium.network.IRCClient;
titanium.network.HTTPCookie;
titanium.network.HTTPServer;
@:native("Titanium.Network")
extern class Network {
	public var online:Bool;
	public function new():Void;
	public function addConnectivityListener(listener:Dynamic):Float;
	public function createHTTPClient():HTTPClient;
	public function createHTTPCookie():HTTPCookie;
	public function createHTTPServer():HTTPServer;
	public function createIPAddress(address:String):IPAddress;
	public function createIRCClient():IRCClient;
	public function createTCPSocket(host:String, port:Float):TCPSocket;
	public function decodeURIComponent(value:String):String;
	public function encodeURIComponent(value:String):String;
	public function getFirstIPAddress():String;
	public function getFirstMACAddress():String;
	public function getHostByAddress(address:String):Host;
	public function getHostByName(name:String):Host;
	@:overload(public function getHTTPProxy():String{})
	public function getHTTPProxy():Void;
	@:overload(public function getHTTPSProxy():String{})
	public function getHTTPSProxy():Void;
	public function getInterfaces():Array<Interface>;
	public function removeConnectivityListener(id:Float):String;
	public function setHTTPProxy(hostname:String):String;
	public function setHTTPSProxy(hostname:String):String;
}