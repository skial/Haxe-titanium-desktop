package titanium.desktop;
/**
 * A module for exposing platform-specific functionality.
 * @since	0.2.0
 */
@:native("Titanium.Platform")
extern class Platform {

	/**
	 * Create a universally unique identifier.
	 * @return	String
	 * @since	0.3.0
	 */
	public static function createUUID():String;

	/**
	 * Get a String representation of the current system's architecture.
	 * @return	String
	 * @since	0.9.0
	 */
	public static function getArchitecture():String;

	/**
	 * Get the per-user machine identifier of this session.
	 * @return	String
	 * @since	0.9.0
	 */
	public static function getMachineId():String;

	/**
	 * Get the name of this platform.
	 * @return	String
	 * @since	0.9.0
	 */
	public static function getName():String;

	/**
	 * Return the operating system architecture type of this system. This
	 * value will be either '32bit' or '64bit.'
	 * @return	String
	 * @since	0.9.0
	 */
	public static function getOSType():String;

	/**
	 * Return the number of processors on this system.
	 * @return	Float
	 * @since	0.9.0
	 */
	public static function getProcessorCount():Float;

	/**
	 * Return the username of the current user.
	 * @return	String
	 * @since	0.9.0
	 */
	public static function getUsername():String;

	/**
	 * Return the version of this system's operating system.
	 * @return	String
	 * @since	0.9.0
	 */
	public static function getVersion():String;

	/**
	 * Open the given application or file in the system's default program.
	 * @param	name	The name or path to the application or file to open.
	 * @return	String
	 * @since	0.9.0
	 */
	public static function openApplication(name:String):String;

	/**
	 * Open the given URL in the system's default browser.
	 * @param	url	the URL to open.
	 * @return	String
	 * @since	0.2.0
	 */
	public static function openURL(url:String):String;

	/**
	 * Take a PNG screenshot of the root window and save it to the given filename.
	 * @param	filename	The filename to write the image to.
	 * @return	String
	 * @since	0.4.0
	 */
	public static function takeScreenshot(filename:String):String;
}