package titanium;
import titanium.notification.Notification;
/**
 * A module for displaying desktop notifications.
 * @since	0.4.0
 */
@:native("Titanium.Notification")
extern class Notification {

	/**
	 * Create a new Notification object.
	 * @return	titanium.notification.Notification
	 * @since	0.4.0
	 */
	public static function createNotification():titanium.notification.Notification;
}