/**
 * ...
 * @author Skial Bainn
 */

package com.appcelerator.titanium.desktop.network;

@:native('Titanium.Network.HTTPServerResponse')
extern class TDHTTPServerResponse {
	public function new():Void {}
	
	// METHODS
	
	/**
	 * add a cookie to this response 
	 * 
	 * @param	name								-		the cookie name
	 * @param	value								-		the cookie value
	 * @param	?maxAge							-		(optional) the cookie's maximum age
	 * @param	?domain							-		(optional) the cookie's domain
	 * @param	?path								-		(optional) the cookie's path
	 * @return	String
	 */
	public function addCookie(name:String, value:String, ?maxAge:Float, ?domain:String, ?path:String):String;
	
	/**
	 * set the content length of this response 
	 * 
	 * @param	length							-		the content length
	 * @return	String
	 */
	public function setContentLength(length:Float):String;
	
	/**
	 * set the content type of this response 
	 * 
	 * @param	type								-		the content type, i.e "text/plain"
	 * @return	String
	 */
	public function setContentType(type:String):String;
	
	/**
	 * set an HTTP header of this response 
	 * 
	 * @param	name								-		the header name
	 * @param	value								-		the header value
	 * @return	String
	 */
	public function setHeader(name:String, value:String):String;
	
	/**
	 * set the reason of this response 
	 * 
	 * @param	reason							-	the reason, i.e "OK"
	 * @return	String
	 */
	public function setReason(reason:String):String;
	
	/**
	 * set the status of this response 
	 * 
	 * @param	status							-		the status, i.e "200"
	 * @return	String
	 */
	public function setStatus(status:String):String;
	
	/**
	 * set the status and reason of this response 
	 * 
	 * @param	status							-		the status, i.e "200"
	 * @param	reason							-		the reason, i.e "OK"
	 * @return	String
	 */
	public function setStatusAndReason(status:String, reason:String):String;
	
	/**
	 * write content into this response 
	 * 
	 * @param	data								-		content to write (can be string or bytes content)
	 * @return	String
	 */
	public function write(data:String):String;
	
}