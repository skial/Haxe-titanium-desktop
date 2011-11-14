package titanium.ui;
import titanium.ui.Menu;
/**
 * An object representing a TrayItem.
 * @since	0.6.0
 */
@:native("Titanium.UI.Tray")
extern class Tray {

	/**
	 * Get the hint for this TrayItem
	 * @return	String
	 * @since	0.6.0
	 */
	public static function getHint():String;

	/**
	 * Get the icon URL for this TrayItem
	 * @return	String
	 * @since	0.6.0
	 */
	public static function getIcon():String;

	/**
	 * Get the menu for this TrayItem
	 * @return	Menu
	 * @since	0.6.0
	 */
	public static function getMenu():Menu;

	/**
	 * Removes a TrayItem
	 * @return	String
	 * @since	0.2.0
	 */
	public static function remove():String;

	/**
	 * Sets a TrayItem's tooltip
	 * @param	hint	(optional) tooltip value or null to unset
	 * @return	String
	 * @since	0.2.0
	 */
	public static function setHint(hint:String):String;

	/**
	 * Sets a TrayItem's icon
	 * @param	icon	(optional) path to the icon or null to unset
	 * @return	String
	 * @since	0.2.0
	 */
	public static function setIcon(icon:String):String;

	/**
	 * Set the menu for this TrayItem
	 * @param	menu	The Menu to use for this TrayItem or null to unset
	 * @return	String
	 * @since	0.6.0
	 */
	public static function setMenu(menu:Menu):String;
}