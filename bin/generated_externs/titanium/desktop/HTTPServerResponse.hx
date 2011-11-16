package titanium.desktop;
/**
 * An object representing a single HTTP server response.
 * @since	0.3.0
 */
@:native("Titanium.Network.HTTPServerResponse")
extern class HTTPServerResponse {

	/**
	 * add a cookie to this response
	 * @param	name	the cookie name
	 * @param	value	the cookie value
	 * @param	maxAge	(optional) the cookie's maximum age
	 * @param	domain	(optional) the cookie's domain
	 * @param	path	(optional) the cookie's path
	 * @return	String
	 * @since	0.3.0
	 */
	public static function addCookie(name:String, value:String, ?maxAge:Float, ?domain:String, ?path:String):String;

	/**
	 * set the content length of this response
	 * @param	length	the content length
	 * @return	String
	 * @since	0.3.0
	 */
	public static function setContentLength(length:Float):String;

	/**
	 * set the content type of this response
	 * @param	type	the content type, i.e "text/plain"
	 * @return	String
	 * @since	0.3.0
	 */
	public static function setContentType(type:String):String;

	/**
	 * set an HTTP header of this response
	 * @param	name	the header name
	 * @param	value	the header value
	 * @return	String
	 * @since	0.3.0
	 */
	public static function setHeader(name:String, value:String):String;

	/**
	 * set the reason of this response
	 * @param	reason	the reason, i.e "OK"
	 * @return	String
	 * @since	0.3.0
	 */
	public static function setReason(reason:String):String;

	/**
	 * set the status of this response
	 * @param	status	the status, i.e "200"
	 * @return	String
	 * @since	0.3.0
	 */
	public static function setStatus(status:String):String;

	/**
	 * set the status and reason of this response
	 * @param	status	the status, i.e "200"
	 * @param	reason	the reason, i.e "OK"
	 * @return	String
	 * @since	0.3.0
	 */
	public static function setStatusAndReason(status:String, reason:String):String;

	/**
	 * write content into this response
	 * @param	data	content to write (can be string or bytes content)
	 * @return	String
	 * @since	0.3.0
	 */
	public static function write(data:String):String;
}