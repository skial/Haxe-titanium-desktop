package titanium.ui;
import titanium.ui.MenuItem;
/**
 * An object representing a menu.
 * @since	0.6.0
 */
@:native("Titanium.UI.Menu")
extern class Menu {

	/**
	 * Add a check item to this menu with the given attributes.
	 * @param	label	The label for the new item
	 * @param	listener	(optional) An event listener callback for the item
	 * @return	titanium.ui.MenuItem
	 * @since	0.6.0
	 */
	public static function addCheckItem(label:String, ?listener:Dynamic):titanium.ui.MenuItem;

	/**
	 * Add an item to this menu with the given attributes.
	 * @param	label	The label for the new item
	 * @param	listener	(optional) An event listener callback for the item
	 * @param	iconURL	The URL for this item's icon
	 * @return	titanium.ui.MenuItem
	 * @since	0.6.0
	 */
	public static function addItem(label:String, ?listener:Dynamic, iconURL:String):titanium.ui.MenuItem;

	/**
	 * Add a separator item to this menu.
	 * @return	titanium.ui.MenuItem
	 * @since	0.6.0
	 */
	public static function addSeparatorItem():titanium.ui.MenuItem;

	/**
	 * Append a MenuItem object to a menu.
	 * @param	item	Append an item to this menu
	 * @return	String
	 * @since	0.6.0
	 */
	public static function appendItem(item:titanium.ui.MenuItem):String;

	/**
	 * Remove all items from this menu.
	 * @return	String
	 * @since	0.6.0
	 */
	public static function clear():String;

	/**
	 * Get an item from this menu at the given index. This method will throw an exception if the index is out of range.
	 * @param	index	The index of the item to get
	 * @return	titanium.ui.MenuItem
	 * @since	0.6.0
	 */
	public static function getItemAt(index:Float):titanium.ui.MenuItem;

	/**
	 * Get the length of this menu.
	 * @return	Float
	 * @since	0.6.0
	 */
	public static function getLength():Float;

	/**
	 * Insert a menu item before the given index. This method will throw an exception if the index of out of range.
	 * @param	item	The menu item to insert
	 * @param	index	The index for this menu item
	 * @return	String
	 * @since	0.6.0
	 */
	public static function insertItemAt(item:titanium.ui.MenuItem, index:Float):String;

	/**
	 * Remove the item in this menu at the given index. This method will throw an exception if the index is out of range.
	 * @param	index	The index of the item to remove
	 * @return	String
	 * @since	0.6.0
	 */
	public static function removeItemAt(index:Float):String;
}