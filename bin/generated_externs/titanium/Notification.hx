package titanium;
import titanium.ui.Notification;
/**
 * A module for displaying desktop notifications.
 * @since	0.4.0
 * @example	null
*/
@:native("Titanium.Notification")
extern class Notification {
	public function new():Void;

	/**
	 * Create a new Notification object.
	 * @return	Notification
	 * @since	0.4.0
	*/
	public function createNotification():Notification;
}