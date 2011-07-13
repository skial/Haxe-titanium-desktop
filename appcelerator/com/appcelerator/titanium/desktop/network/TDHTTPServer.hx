/**
 * ...
 * @author Skial Bainn
 */

package com.appcelerator.titanium.desktop.network;

@:native('Titanium.Network.HTTPServer')
extern class TDHTTPServer {
	public function new():Void {}
	
	// METHODS
	
	/**
	 * bind this server to a port on a specific interface 
	 * 
	 * @param	port								-		port to bind on
	 * @param	handler							-		callback for server logic (in seperate thread)
	 * @param	?address							-		(optional) address to bind to
	 * @return	String
	 */
	public function bind(port:Float, handler:Dynamic, ?address:String):String;
	
	/**
	 * close this server 
	 * 
	 * @return	String
	 */
	public function close():String;
	
	/**
	 * check to see if this server socket is closed 
	 * 
	 * @return	Boolean
	 */
	public function isClosed():Bool;
	
}