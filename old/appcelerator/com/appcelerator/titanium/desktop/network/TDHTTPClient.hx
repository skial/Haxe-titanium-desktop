/**
 * ...
 * @author Skial Bainn
 */

package com.appcelerator.titanium.desktop.network;

import com.appcelerator.titanium.desktop.filesystem.TDFile;

@:native('Titanium.Network.HTTPClient')
extern class TDHTTPClient {
	public function new():Void {}
	
	// METHODS
	
	/**
	 * Aborts an in progress connection 
	 * 
	 * @return	String
	 */
	public function abort():String;
	
	/**
	 * This function takes no arguments. 
	 * 
	 * @return	String
	 */
	public function clearCookies():String;
	
	/**
	 * Get a HTTP cookie from the response. 
	 * 
	 * @param	name									-		name of the cookie to get
	 * @return	Network.HTTPCookie 
	 */
	public function getCookie(name:String):TDHTTPCookie;
	
	/**
	 * Get the maximum number of redirects to follow. The default is -1, which means that there is no 
	 * maximum limit to the number of redirects to follow. 
	 * 
	 * @return	Float
	 */
	public function getMaxRedirects():Float;
	
	/**
	 * Return the value of a response header, given it's name. If the given name occurs multiple times, this 
	 * method will only return one occurence. 
	 * 
	 * @param	name									-		The response header name.
	 * @return	String
	 */
	public function getResponseHeader(name:String):String;
	
	/**
	 * Return all response headers as an array of two element arrays. 
	 * 
	 * @return	Array
	 */
	public function getResponseHeaders():Array<Dynamic>;
	
	/**
	 * Return the current timeout setting of this Network.HTTPClient object in milliseconds. Thie value may be 
	 * -1 to indicate no timeout. The default timeout value is five minutes. 
	 * 
	 * @return	Float
	 */
	public function getTimeout():Float;
	
	/**
	 * Opens an HTTP connection 
	 * 
	 * @param	method								-		The HTTP method to use e.g. POST
	 * @param	url									-		The url to connect to
	 * @param	?asynchronous						-		(optional) Whether or not the request should be asynchronous (default: True)
	 * @param	?username							-		(optional) The HTTP username to use
	 * @param	?password							-		(optional) The HTTP password to use
	 * @return	Boolean
	 */
	public function open(method:String, url:String, ?asynchronous:Bool = true, ?username:String, ?password:String):Bool;
	
	/**
	 * Sends a request to the server and receive data with the provided handler. 
	 * 
	 * @param	handler								-		A handler to receive the response data. handler can either be 
	 * 															Titanium.Filesystem.File or a Function.
	 * @param	?data									-		(optional) Data to send to the server.
	 * @return	Boolean
	 */
	public function receive(handler:Dynamic, ?data:Dynamic):Bool;
	
	/**
	 * Sends data through the HTTP connection 
	 * 
	 * @param	?data									-		(optional) Data to send to the server.
	 * @return	Boolean
	 */
	public function send(?data:Dynamic):Bool;
	
	/**
	 * Sends the contents of a file as body content 
	 * 
	 * @param	file									-		the File object to send
	 * @return	String
	 */
	public function sendFile(file:TDFile):String;
	
	/**
	 * Set the basic authentication credentials 
	 * 
	 * @param	username								-		The username to use or an empty String to use none.
	 * @param	password								-		The password to use or an empty String to use none.
	 * @return	String
	 */
	public function setBasicCredentials(username:String, password:String):String;
	
	/**
	 * Set a HTTP cookie in the request. 
	 * 
	 * @param	name									-		the cookie name
	 * @param	value									-		the cookie value
	 * @return	String
	 */
	public function setCookie(name:String, value:String):String;
	
	/**
	 * Set the authentication credentials for the HTTPClient. 
	 * 
	 * @param	username								-		The username to use or an empty String to use none.
	 * @param	password								-		The password to use or an empty String to use none. 
	 * @return	String
	 */
	public function setCredentials(username:String, password:String):String;
	
	/**
	 * Set the maximum number of redirects to follow. The default is -1, which means that there is no 
	 * maximum limit to the number of redirects to follow. 
	 * 
	 * @param	amount								-		the number of redirects to follow.
	 * @return	Float
	 */
	public function setMaxRedirects(amount:Float):String;
	
	/**
	 * Sets a request header for the connection 
	 * 
	 * @param	header								-		request header name
	 * @param	value									-		request header value
	 * @return	String
	 */
	public function setRequestHeader(header:String, value:String):String;
	
	/**
	 * Set the timeout setting of this Network.HTTPClient. Thie value may be -1 to indicate no timeout. The 
	 * default timeout value is five minutes. 
	 * 
	 * @param	timeout								-		The new timeout value in milliseconds.
	 * @return	String
	 */
	public function setTimeout(timeout:Float):String;
	
	// PROPERTIES
	
	/**
	 * The DONE readyState property
	 */
	public var DONE:String;
	
	/**
	 * The HEADERS_RECEIVED readyState property
	 */
	public var HEADERS_RECEIVED:String;
	
	/**
	 * The LOADING readyState property
	 */
	public var LOADING:String;
	
	/**
	 * The OPENED readyState property
	 */
	public var OPENED:String;
	
	/**
	 * The UNSENT readyState property.
	 */
	public var UNSENT:String;
	
	/**
	 * Whether an HTTPClient object is connected or not
	 */
	public var connected:String;
	
	/**
	 * Amount of data received from server so far. Updated on HTTP_DATA_RECEIVED event.
	 */
	public var dataReceived:String;
	
	/**
	 * Amount of data sent to server so far. Updated on HTTP_DATA_SENT event.
	 */
	public var dataSent:String;
	
	/**
	 * The handler function that will be fired as stream data is received from an HTTP request
	 */
	public var ondatastream:String;
	
	/**
	 * The handler function that will be fired when request is completed
	 */
	public var onload:String;
	
	/**
	 * The handler function that will be fired when the readyState code of an HTTPClient object changes.
	 */
	public var onreadystatechange:String;
	
	/**
	 * The handler function that will be fired as the stream data is sent.
	 */
	public var onsendstream:String;
	
	/**
	 * The ready-state status for the connection
	 */
	public var readyState:String;
	
	/**
	 * The response of an HTTP request as a Blob. Currently this property is only valid after the request has been completed.
	 */
	public var responseData:String;
	
	/**
	 * The response of an HTTP request as text
	 */
	public var responseText:String;
	
	/**
	 * The response of an HTTP request as parsable XML
	 */
	public var responseXML:String;
	
	/**
	 * The response status code of an HTTP request
	 */
	public var status:String;
	
	/**
	 * The response status text of an HTTP Request
	 */
	public var statusText:String;
	
	/**
	 * True if HTTP request timed out
	 */
	public var timedOut:String;
	
	/**
	 * The request URL. This value will be updated on redirect events.
	 */
	public var url:String;
	
	/**
	 * User agent string to use for requests. (Default: PRODUCTNAME/PRODUCT_VERSION)
	 */
	public var userAgent:String;
	
}