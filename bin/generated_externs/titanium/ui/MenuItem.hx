package titanium.ui;
import titanium.ui.MenuItem;
import titanium.ui.Menu;
/**
 * An object representing a menu item.
 * @since	0.6.0
 */
@:native("Titanium.UI.MenuItem")
extern class MenuItem {

	/**
	 * Add a check item to this menu item's submenu with the given attributes. If this menu item does not have a submenu, it will be created. This method is not available for separator items.
	 * @param	label	The label for the new item
	 * @param	listener	(optional) An event listener callback for the item
	 * @return	titanium.ui.MenuItem
	 * @since	0.6.0
	 */
	public static function addCheckItem(label:String, ?listener:Dynamic):titanium.ui.MenuItem;

	/**
	 * Add an item to this menu item's submenu with the given attributes. If this menu item does not have a submenu, it will be created. This method is not available for separator items.
	 * @param	label	The label for the new item
	 * @param	listener	(optional) An event listener callback for the item
	 * @param	iconURL	The URL for this item's icon
	 * @return	titanium.ui.MenuItem
	 * @since	0.6.0
	 */
	public static function addItem(label:String, ?listener:Dynamic, iconURL:String):titanium.ui.MenuItem;

	/**
	 * Add a separator item to this menu item's submenu. If this menu item does not have a submenu, it will be created. This method is not available for separator items.
	 * @return	titanium.ui.MenuItem
	 * @since	0.6.0
	 */
	public static function addSeparatorItem():titanium.ui.MenuItem;

	/**
	 * Disable this item i.e. make it non-clickable. This method is not available for separator items.
	 * @return	String
	 * @since	0.6.0
	 */
	public static function disable():String;

	/**
	 * Enable this item i.e. make it clickable. This method is not available for separator items.
	 * @return	String
	 * @since	0.6.0
	 */
	public static function enable():String;

	/**
	 * This method is only available for check items.
	 * @param	autocheck	Whether or not this item should is an autocheck
	 * @return	String
	 * @since	0.6.0
	 */
	public static function getAutoCheck(autocheck:Bool):String;

	/**
	 * Get this item's icon URL This method is not available for separator or check items.
	 * @return	String|null
	 * @since	0.6.0
	 */
	@:overload( function getIcon():String{})
	public static function getIcon():Void;

	/**
	 * Get this item's label. This method is not available for separator items.
	 * @return	String
	 * @since	0.6.0
	 */
	public static function getLabel():String;

	/**
	 * Gets the state of this check item This method is only available for check items.
	 * @return	Bool
	 * @since	0.6.0
	 */
	public static function getState():Bool;

	/**
	 * Get this item's submenu. This method is not available for separator items.
	 * @return	titanium.ui.Menu
	 * @since	0.6.0
	 */
	public static function getSubmenu():titanium.ui.Menu;

	/**
	 * Return true if this UI.MenuItem is a check menu item or false otherwise.
	 * @return	Bool
	 * @since	0.6.0
	 */
	public static function isCheck():Bool;

	/**
	 * This method is not available for separator items.
	 * @return	Bool
	 * @since	0.6.0
	 */
	public static function isEnabled():Bool;

	/**
	 * Return true if this UI.MenuItem is seperator menu item or false otherwise.
	 * @return	Bool
	 * @since	0.6.0
	 */
	public static function isSeparator():Bool;

	/**
	 * Set whether or not this check item is an autocheck item. An autocheck item (the default) will automatically flip the state of the check on a a click event. Turning off this behavior makes the check item more useful as a radio button. This method is only available for check items.
	 * @param	autocheck	Whether or not this item should be an autocheck
	 * @return	String
	 * @since	0.6.0
	 */
	public static function setAutoCheck(autocheck:Bool):String;

	/**
	 * Set the icon URL for this item This method is not available for separator or check items.
	 * @param	iconURL	The new icon URL for this item or null to unset it
	 * @return	String
	 * @since	0.6.0
	 */
	@:overload( function setIcon(iconURL:String):String{})
	public static function setIcon(iconURL:Void):String;

	/**
	 * Set the label for this item. This method is not available for separator items.
	 * @param	label	The new label for this item
	 * @return	String
	 * @since	0.6.0
	 */
	public static function setLabel(label:String):String;

	/**
	 * Sets the state of this check item This method is only available for check items.
	 * @param	state	A True state is checked
	 * @return	String
	 * @since	0.6.0
	 */
	public static function setState(state:Bool):String;

	/**
	 * Set this item's submenu. This method is not available for separator items.
	 * @param	menu	The submenu to use for this item or null to unset it
	 * @return	String
	 * @since	0.6.0
	 */
	public static function setSubmenu(menu:titanium.ui.Menu):String;
}