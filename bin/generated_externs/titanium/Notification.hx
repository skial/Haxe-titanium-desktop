package titanium;
import titanium.ui.Notification;
/**
 * A module for displaying desktop notifications.
 * @since	0.4.0
 */
@:native("Titanium.Notification")
extern class Notification {

	/**
	 * Create a new Notification object.
	 * @return	titanium.ui.Notification
	 * @since	0.4.0
	 */
	public static function createNotification():titanium.ui.Notification;
}