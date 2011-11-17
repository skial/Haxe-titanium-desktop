package titanium.desktop.notification;
/**
 * An object representing a Desktop notification.
 * @since	0.4.0
 */
@:native("Titanium.Notification.Notification")
extern class Notification {

	/**
	 * Hide this Notification.
	 * @return	Bool
	 * @since	0.9.0
	 */
	public function hide():Bool;

	/**
	 * Set a callback function fired when notification is clicked.
	 * @param	callback	function to execute when notification is clicked
	 * @return	String
	 * @since	0.9.0
	 */
	public var setCallback:Dynamic->String;

	/**
	 * Set the notification icon image.
	 * @param	icon	path to the icon image
	 * @return	String
	 * @since	0.9.0
	 */
	public function setIcon(icon:String):String;

	/**
	 * Set the notification message
	 * @param	message	notification message text
	 * @return	String
	 * @since	0.9.0
	 */
	public function SetMessage(message:String):String;

	/**
	 * Set the timeout before the notification expires.
	 * @param	timeout	Timeout in seconds. (-1 = use system default
	 * @return	String
	 * @since	0.9.0
	 */
	public function setTimeout(timeout:Int):String;

	/**
	 * Set the notification title
	 * @param	title	notification title text
	 * @return	String
	 * @since	0.9.0
	 */
	public function setTitle(title:String):String;

	/**
	 * Display the notification
	 * @return	Bool
	 * @since	0.9.0
	 */
	public function show():Bool;
}