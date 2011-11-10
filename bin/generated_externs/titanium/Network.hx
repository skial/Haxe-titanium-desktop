package titanium;
@:native("Titanium.Network")
extern class Network {
	public var online:Bool;
	public function new():Void;
	public function addConnectivityListener(listener:Dynamic):Float;
	public function createHTTPClient():network.HTTPClient;
	public function createHTTPCookie():network.HTTPCookie;
	public function createHTTPServer():network.HTTPServer;
	public function createIPAddress(address:String):network.IPAddress;
	public function createIRCClient():network.IRCClient;
	public function createTCPSocket(host:String, port:Float):network.TCPSocket;
	public function decodeURIComponent(value:String):String;
	public function encodeURIComponent(value:String):String;
	public function getFirstIPAddress():String;
	public function getFirstMACAddress():String;
	public function getHostByAddress(address:String):network.Host;
	public function getHostByName(name:String):network.Host;
	public function getHTTPProxy():String|null;
	public function getHTTPSProxy():String|null;
	public function getInterfaces():Array<network.Interface>;
	public function removeConnectivityListener(id:Float):String;
	public function setHTTPProxy(hostname:String):String;
	public function setHTTPSProxy(hostname:String):String;
}