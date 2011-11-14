package titanium.network;
/**
 * An object representing a single HTTP server request.
 * @since	0.3.0
 */
@:native("Titanium.Network.HTTPServerRequest")
extern class HTTPServerRequest {

	/**
	 * the content length of this request
	 * @return	Float
	 * @since	0.3.0
	 */
	public static function getContentLength():Float;

	/**
	 * get the content type of this request
	 * @return	String
	 * @since	0.3.0
	 */
	public static function getContentType():String;

	/**
	 * get an HTTP header value from this request
	 * @param	header	the header of the request
	 * @param	header	the header of the request
	 * @return	String
	 * @since	0.3.0
	 */
	public static function getHeader(header:String, header:String):String;

	/**
	 * get an HTTP header value from this request
	 * @return	String
	 * @since	0.7.0
	 */
	public static function getHeaders():String;

	/**
	 * get the HTTP method of this request
	 * @return	String
	 * @since	0.3.0
	 */
	public static function getMethod():String;

	/**
	 * get the URI of this request
	 * @return	String
	 * @since	0.3.0
	 */
	public static function getURI():String;

	/**
	 * get the HTTP version of this request
	 * @return	String
	 * @since	0.3.0
	 */
	public static function getVersion():String;

	/**
	 * check to see if this request has an HTTP header
	 * @param	header	the header of the request to check
	 * @return	Bool
	 * @since	0.3.0
	 */
	public static function hasHeader(header:String):Bool;

	/**
	 * read content from this request
	 * @param	length	(optional) the number of bytes to read (default 8096)
	 * @return	String
	 * @since	0.3.0
	 */
	public static function read(?length:Float):String;
}