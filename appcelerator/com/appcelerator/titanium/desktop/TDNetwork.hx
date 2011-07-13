/**
 * ...
 * @author Skial Bainn
 */

package com.appcelerator.titanium.desktop;

import com.appcelerator.titanium.desktop.network.TDIRCClient;
import com.appcelerator.titanium.desktop.network.TDHTTPClient;
import com.appcelerator.titanium.desktop.network.TDHTTPCookie;
import com.appcelerator.titanium.desktop.network.TDHTTPServer;
import com.appcelerator.titanium.desktop.network.TDHTTPServerRequest;
import com.appcelerator.titanium.desktop.network.TDHTTPServerResponse;
import com.appcelerator.titanium.desktop.network.TDHost;
import com.appcelerator.titanium.desktop.network.TDIPAddress;
import com.appcelerator.titanium.desktop.network.TDTCPSocket;

@:native('Titanium.Network')
extern class TDNetwork {
	public function new():Void {}
	
	// SUB-MODULES
	
	/**
	 * An object representing an IRC client connection.
	 */
	public var IRCClient:TDIRCClient;
	
	// OBJECTS
	
	/**
	 * An HTTPClient which can be used as an alternative to XMLHttpRequest.
	 */
	public var HTTPClient:TDHTTPClient;
	
	/**
	 * An object representing an HTTP cookie.
	 */
	public var HTTPCookie:TDHTTPCookie;
	
	/**
	 * An implementation of an HTTPServer.
	 */
	public var HTTPServer:TDHTTPServer;
	
	/**
	 * An object representing a single HTTP server request.
	 */
	public var HTTPServerRequest:TDHTTPServerRequest;
	
	/**
	 * An object representing a single HTTP server response.
	 */
	public var HTTPServerResponse:TDHTTPServerResponse;
	
	/**
	 * An object representing a host on the network.
	 */
	public var Host:TDHost;
	
	/**
	 * An object representing an IP address.
	 */
	public var IPAddress:TDIPAddress;
	
	/**
	 * An object representing a TCP client socket connection.
	 */
	public var TCPSocket:TDTCPSocket;
	
	// FUNCTIONS
	
	/**
	 * Adds a connectivity change listener that fires when the system connects or disconnects from the internet 
	 * 
	 * @param	listener								-		
	 * @return	Float
	 */
	public function addConnectivityListener(listener:Dynamic):Float;
	
	/**
	 * Creates an HTTPClient object 
	 * 
	 * @return	Network.HTTPClient 
	 */
	public function createHTTPClient():TDHTTPClient;
	
	/**
	 * Creates a new HTTPCookie object 
	 * 
	 * @return	Network.HTTPCookie 
	 */
	public function createHTTPCookie():TDHTTPCookie;
	
	/**
	 * Creates an HTTPServer object 
	 * 
	 * @return	Network.HTTPServer 
	 */
	public function createHTTPServer():TDHTTPServer;
	
	/**
	 * Creates an IPAddress object 
	 * 
	 * @param	address								-		the IP address
	 * @return	Network.IPAddress 
	 */
	public function createIPAddress(address:String):TDIPAddress;
	
	/**
	 * Creates an IRCClient object 
	 * 
	 * @return	Network.IRCClient 
	 */
	public function createIRCClient():TDIRCClient;
	
	/**
	 * Creates a TCPSocket object 
	 * 
	 * @param	host									-		the hostname to connect to
	 * @param	port									-		the port to use
	 * @return	Network.TCPSocket 
	 */
	public function createTCPSocket(host:String, port:Float):TDTCPSocket;
	
	/**
	 * Decodes a URI component 
	 * 
	 * @param	value									-		value to decode
	 * @return	String
	 */
	public function decodeURIComponent(value:String):String;
	
	/**
	 * Encodes a URI Component 
	 * 
	 * @param	value									-		value to encode
	 * @return	String
	 */
	public function encodeURIComponent(value:String):String;
	
	/**
	 * Return the proxy override, if one is set. 
	 * 
	 * @return	String|null 
	 */
	public function getHTTPProxy():Dynamic;
	
	/**
	 * Return the proxy override, if one is set. 
	 * 
	 * @return	String|null 
	 */
	public function getHTTPSProxy():Dynamic;
	
	/**
	 * Returns a Host object using an address 
	 * 
	 * @param	address								-		the address
	 * @return	Network.Host 
	 */
	public function getHostByAddress(address:String):TDHost;
	
	/**
	 * Returns a Host object using a hostname 
	 * 
	 * @param	name									-		the hostname
	 * @return	Network.Host 
	 */
	public function getHostByName(name:String):TDHost;
	
	/**
	 * Removes a connectivity change listener 
	 * 
	 * @param	id										-		the callback id of the method
	 * @return	String
	 */
	public function removeConnectivityListener(id:Float):String;
	
	/**
	 * Override application proxy autodetection with a proxy URL. 
	 * 
	 * @param	hostname								-		The full proxy hostname.
	 * @return	String
	 */
	public function setHTTPProxy(hostname:String):String;
	
	/**
	 * Override application proxy autodetection with a proxy URL. 
	 * 
	 * @param	hostname								-		The full proxy hostname.
	 * @return	String
	 */
	public function setHTTPSProxy(hostname:String):String;
	
	// PROPERTIES
	
	/**
	 * Whether or not the system is connected to the internet
	 */
	public var online:Bool;
	
}