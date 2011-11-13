package titanium.network;
/**
 * An object representing an HTTP cookie.
 * @since	0.7.0
 */
@:native("Titanium.Network.HTTPCookie")
extern class HTTPCookie {
	public function new():Void;

	/**
	 * Get the cookie comment text
	 * @return	String
	 * @since	0.7.0
	 */
	public function getComment():String;

	/**
	 * Get the domain for which the cookie is valid
	 * @return	String
	 * @since	0.7.0
	 */
	public function getDomain():String;

	/**
	 * Get the lifetime of the cookie, in seconds.
	 * @return	Integer
	 * @since	0.7.0
	 */
	public function getMaxAge():Integer;

	/**
	 * Get the cookie name
	 * @return	String
	 * @since	0.7.0
	 */
	public function getName():String;

	/**
	 * Get the subset of URLs to which this cookie applies
	 * @return	String
	 * @since	0.7.0
	 */
	public function getPath():String;

	/**
	 * Get the cookie value
	 * @return	String
	 * @since	0.7.0
	 */
	public function getValue():String;

	/**
	 * Identifies to which version of the state management specification the cookie conforms. 0 = netscape 1 = RFC2109
	 * @return	Integer
	 * @since	0.7.0
	 */
	public function getVersion():Integer;

	/**
	 * Check if the http only flag is set on the cookie
	 * @return	Bool
	 * @since	0.7.0
	 */
	public function isHTTPOnly():Bool;

	/**
	 * Check if the secure flag is set on the cookie
	 * @return	Bool
	 * @since	0.7.0
	 */
	public function isSecure():Bool;

	/**
	 * Set the cookie comment text
	 * @param	comment	text to set as comment
	 * @return	String
	 * @since	0.7.0
	 */
	public function setComment(comment:String):String;

	/**
	 * Set the domain for which the cookie is valid
	 * @param	domain	the domain to set
	 * @return	String
	 * @since	0.7.0
	 */
	public function setDomain(domain:String):String;

	/**
	 * Set the http only flag on the cookie
	 * @param	enableHTTPOnly	if True sets the http only flag
	 * @return	String
	 * @since	0.7.0
	 */
	public function setHTTPOnly(enableHTTPOnly:Bool):String;

	/**
	 * Set the lifetime of the cookie, in seconds.
	 * @param	lifetime	the lifetime in seconds. 0 = discard
	 * @return	String
	 * @since	0.7.0
	 */
	public function setMaxAge(lifetime:Integer):String;

	/**
	 * Set the cookie name
	 * @param	name	name of the cookie
	 * @return	String
	 * @since	0.7.0
	 */
	public function setName(name:String):String;

	/**
	 * Set the subset of URLs to which this cookie applies
	 * @param	path	the path to set
	 * @return	String
	 * @since	0.7.0
	 */
	public function setPath(path:String):String;

	/**
	 * Set the secure flag on the cookie
	 * @param	enableSecure	if True makes the cookie secure
	 * @return	String
	 * @since	0.7.0
	 */
	public function setSecure(enableSecure:Bool):String;

	/**
	 * Set the cookie value
	 * @param	value	value to set cookie
	 * @return	String
	 * @since	0.7.0
	 */
	public function setValue(value:String):String;

	/**
	 * Set the state management specifiction version the cookie conforms. (Default: 0)
	 * @param	version	cookie version (0 or 1)
	 * @return	String
	 * @since	0.7.0
	 */
	public function setVersion(version:Integer):String;

	/**
	 * return a string representation of the cookie
	 * @return	String
	 * @since	0.7.0
	 */
	public function toString():String;
}