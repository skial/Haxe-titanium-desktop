package titanium.ui;
import titanium.ui.Menu;
/**
 * An object representing a TrayItem.
 * @since	0.6.0
 * @example	null
*/
@:native("Titanium.UI.Tray")
extern class Tray {
	public function new():Void;

	/**
	 * Get the hint for this TrayItem
	 * @return	String
	 * @since	0.6.0
	*/
	public function getHint():String;

	/**
	 * Get the icon URL for this TrayItem
	 * @return	String
	 * @since	0.6.0
	*/
	public function getIcon():String;

	/**
	 * Get the menu for this TrayItem
	 * @return	Menu
	 * @since	0.6.0
	*/
	public function getMenu():Menu;

	/**
	 * Removes a TrayItem
	 * @return	String
	 * @since	0.2.0
	*/
	public function remove():String;

	/**
	 * Sets a TrayItem's tooltip
	 * @param	hint	(optional) tooltip value or null to unset
	 * @return	String
	 * @since	0.2.0
	*/
	public function setHint(hint:String):String;

	/**
	 * Sets a TrayItem's icon
	 * @param	icon	(optional) path to the icon or null to unset
	 * @return	String
	 * @since	0.2.0
	*/
	public function setIcon(icon:String):String;

	/**
	 * Set the menu for this TrayItem
	 * @param	menu	The Menu to use for this TrayItem or null to unset
	 * @return	String
	 * @since	0.6.0
	*/
	public function setMenu(menu:Menu):String;
}