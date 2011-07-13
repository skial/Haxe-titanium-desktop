/**
 * ...
 * @author Skial Bainn
 */

package com.appcelerator.titanium.desktop.network;

@:native('Titanium.Network.HTTPServerRequest')
extern class TDHTTPServerRequest {
	public function new():Void {}
	
	// METHODS
	
	/**
	 * the content length of this request 
	 * 
	 * @return	Float
	 */
	public function getContentLength():Float;
	
	/**
	 * get the content type of this request 
	 * 
	 * @return	String
	 */
	public function getContentType():String;
	
	/**
	 * get an HTTP header value from this request 
	 * 
	 * @param	header							-		the header of the request
	 * @return	String
	 */
	public function getHeader(header:String):String;
	
	/**
	 * get an HTTP header value from this request 
	 * 
	 * @return
	 */
	public function getHeaders():String;
	
	/**
	 * get the HTTP method of this request 
	 * 
	 * @return	String
	 */
	public function getMethod():String;
	
	/**
	 * get the URI of this request 
	 * 
	 * @return	String
	 */
	public function getURI():String;
	
	/**
	 * get the HTTP version of this request 
	 * 
	 * @return	String
	 */
	public function getVersion():String;
	
	/**
	 * check to see if this request has an HTTP header 
	 * 
	 * @param	header							-		the header of the request to check
	 * @return	Boolean
	 */
	public function hasHeader(header:String):Bool;
	
	/**
	 * read content from this request 
	 * 
	 * @param	length							-		 (optional) the number of bytes to read (default 8096) 
	 * @return	String
	 */
	public function read(length:Float):String;
	
}