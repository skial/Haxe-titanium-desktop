package titanium;
import titanium.network.IPAddress;
import titanium.network.TCPSocket;
import titanium.network.Host;
import titanium.network.Interface;
import titanium.network.HTTPClient;
import titanium.network.IRCClient;
import titanium.network.HTTPCookie;
import titanium.network.HTTPServer;
/**
 * A module for network functionality.
 * @since	0.2.0
 * @example	null
*/
@:native("Titanium.Network")
extern class Network {

	/**
	 * Note this is deprecated and only returns true starting in 1.2.
	 * @since	0.2.0
	*/
	public var online:Bool;
	public function new():Void;

	/**
	 * Adds a connectivity change listener that fires when the system connects or disconnects from the internet
	 * @param	listener	null
	 * @return	Float
	 * @since	0.2.0
	*/
	public function addConnectivityListener(listener:Dynamic):Float;

	/**
	 * Creates an HTTPClient object
	 * @return	HTTPClient
	 * @since	0.3.0
	*/
	public function createHTTPClient():HTTPClient;

	/**
	 * Creates a new HTTPCookie object
	 * @return	HTTPCookie
	 * @since	0.7.0
	*/
	public function createHTTPCookie():HTTPCookie;

	/**
	 * Creates an HTTPServer object
	 * @return	HTTPServer
	 * @since	0.4.0
	*/
	public function createHTTPServer():HTTPServer;

	/**
	 * Creates an IPAddress object
	 * @param	address	the IP address
	 * @return	IPAddress
	 * @since	0.2.0
	*/
	public function createIPAddress(address:String):IPAddress;

	/**
	 * Creates an IRCClient object [DEPRECATED]
	 * @return	IRCClient
	 * @since	0.2.0
	*/
	public function createIRCClient():IRCClient;

	/**
	 * Creates a TCPSocket object
	 * @param	host	the hostname to connect to
	 * @param	port	the port to use
	 * @return	TCPSocket
	 * @since	0.2.0
	*/
	public function createTCPSocket(host:String, port:Float):TCPSocket;

	/**
	 * Decodes a URI component
	 * @param	value	value to decode
	 * @return	String
	 * @since	0.3.0
	*/
	public function decodeURIComponent(value:String):String;

	/**
	 * Encodes a URI Component
	 * @param	value	value to encode
	 * @return	String
	 * @since	0.3.0
	*/
	public function encodeURIComponent(value:String):String;

	/**
	 * Return the first IPv4 address in this system's list of interfaces.
	 * @return	String
	 * @since	0.9.0
	*/
	public function getFirstIPAddress():String;

	/**
	 * Return the first MAC address in this system's list of interfaces.
	 * @return	String
	 * @since	0.9.0
	*/
	public function getFirstMACAddress():String;

	/**
	 * Returns a Host object using an address
	 * @param	address	the address
	 * @return	Host
	 * @since	0.2.0
	*/
	public function getHostByAddress(address:String):Host;

	/**
	 * Returns a Host object using a hostname
	 * @param	name	the hostname
	 * @return	Host
	 * @since	0.2.0
	*/
	public function getHostByName(name:String):Host;

	/**
	 * Return the proxy override, if one is set.
	 * @return	String|null
	 * @since	0.7.0
	*/
	@:overload(public function getHTTPProxy():String{})
	public function getHTTPProxy():Void;

	/**
	 * Return the proxy override, if one is set.
	 * @return	String|null
	 * @since	0.7.0
	*/
	@:overload(public function getHTTPSProxy():String{})
	public function getHTTPSProxy():Void;

	/**
	 * Return a list of network interfaces on this system.
	 * @return	Array<Interface>
	 * @since	0.9.0
	*/
	public function getInterfaces():Array<Interface>;

	/**
	 * Removes a connectivity change listener
	 * @param	id	the callback id of the method
	 * @return	String
	 * @since	0.2.0
	*/
	public function removeConnectivityListener(id:Float):String;

	/**
	 * Override application proxy autodetection with a proxy URL.
	 * @param	hostname	The full proxy hostname.
	 * @return	String
	 * @since	0.7.0
	*/
	public function setHTTPProxy(hostname:String):String;

	/**
	 * Override application proxy autodetection with a proxy URL.
	 * @param	hostname	The full proxy hostname.
	 * @return	String
	 * @since	0.7.0
	*/
	public function setHTTPSProxy(hostname:String):String;
}