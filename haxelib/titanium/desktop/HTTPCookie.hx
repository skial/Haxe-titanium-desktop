package titanium.desktop;
/**
 * An object representing an HTTP cookie.
 * @since	0.7.0
 */
@:native("Titanium.Network.HTTPCookie")
extern class HTTPCookie {

	/**
	 * Get the cookie comment text
	 * @return	String
	 * @since	0.7.0
	 */
	public static function getComment():String;

	/**
	 * Get the domain for which the cookie is valid
	 * @return	String
	 * @since	0.7.0
	 */
	public static function getDomain():String;

	/**
	 * Get the lifetime of the cookie, in seconds.
	 * @return	Int
	 * @since	0.7.0
	 */
	public static function getMaxAge():Int;

	/**
	 * Get the cookie name
	 * @return	String
	 * @since	0.7.0
	 */
	public static function getName():String;

	/**
	 * Get the subset of URLs to which this cookie applies
	 * @return	String
	 * @since	0.7.0
	 */
	public static function getPath():String;

	/**
	 * Get the cookie value
	 * @return	String
	 * @since	0.7.0
	 */
	public static function getValue():String;

	/**
	 * Identifies to which version of the state management specification the cookie conforms. 0 = netscape 1 = RFC2109
	 * @return	Int
	 * @since	0.7.0
	 */
	public static function getVersion():Int;

	/**
	 * Check if the http only flag is set on the cookie
	 * @return	Bool
	 * @since	0.7.0
	 */
	public static function isHTTPOnly():Bool;

	/**
	 * Check if the secure flag is set on the cookie
	 * @return	Bool
	 * @since	0.7.0
	 */
	public static function isSecure():Bool;

	/**
	 * Set the cookie comment text
	 * @param	comment	text to set as comment
	 * @return	String
	 * @since	0.7.0
	 */
	public static function setComment(comment:String):String;

	/**
	 * Set the domain for which the cookie is valid
	 * @param	domain	the domain to set
	 * @return	String
	 * @since	0.7.0
	 */
	public static function setDomain(domain:String):String;

	/**
	 * Set the http only flag on the cookie
	 * @param	enableHTTPOnly	if True sets the http only flag
	 * @return	String
	 * @since	0.7.0
	 */
	public static function setHTTPOnly(enableHTTPOnly:Bool):String;

	/**
	 * Set the lifetime of the cookie, in seconds.
	 * @param	lifetime	the lifetime in seconds. 0 = discard
	 * @return	String
	 * @since	0.7.0
	 */
	public static function setMaxAge(lifetime:Int):String;

	/**
	 * Set the cookie name
	 * @param	name	name of the cookie
	 * @return	String
	 * @since	0.7.0
	 */
	public static function setName(name:String):String;

	/**
	 * Set the subset of URLs to which this cookie applies
	 * @param	path	the path to set
	 * @return	String
	 * @since	0.7.0
	 */
	public static function setPath(path:String):String;

	/**
	 * Set the secure flag on the cookie
	 * @param	enableSecure	if True makes the cookie secure
	 * @return	String
	 * @since	0.7.0
	 */
	public static function setSecure(enableSecure:Bool):String;

	/**
	 * Set the cookie value
	 * @param	value	value to set cookie
	 * @return	String
	 * @since	0.7.0
	 */
	public static function setValue(value:String):String;

	/**
	 * Set the state management specifiction version the cookie conforms. (Default: 0)
	 * @param	version	cookie version (0 or 1)
	 * @return	String
	 * @since	0.7.0
	 */
	public static function setVersion(version:Int):String;

	/**
	 * return a string representation of the cookie
	 * @return	String
	 * @since	0.7.0
	 */
	public static function toString():String;
}