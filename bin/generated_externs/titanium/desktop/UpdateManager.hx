package titanium.desktop;
/**
 * A module for dealing with application and component updates.
 * @since	0.4.0
 */
@:native("Titanium.UpdateManager")
extern class UpdateManager {

	/**
	 * Set the update handler implementation function that will be invoked when an update is detected
	 * @since	0.4.0
	 */
	public static var onupdate:String;

	/**
	 * Check the update service for a new version
	 * @param	id	The monitor id returned from startMonitor
	 * @return	String
	 * @since	0.4.0
	 */
	public static function cancelMonitor(id:Float):String;

	/**
	 * Install an application update received from update monitor. This method will cause the process to first be restarted for the update to begin.
	 * @param	updateSpec	Update spec object received from update service.
	 * @return	String
	 * @since	0.4.0
	 */
	public static function installAppUpdate(updateSpec:Dynamic):String;

	/**
	 * Check the update service for a new version
	 * @param	component	Name of the component
	 * @param	callback	Function callback to call when completed
	 * @param	interval	Interval in milliseconds for how often to check for an update
	 * @return	Float
	 * @since	0.4.0
	 */
	public static var startMonitor:String->Dynamic->Float->Float;
}