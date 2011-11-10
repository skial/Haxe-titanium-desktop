/**
 * ...
 * @author Skial Bainn
 */

package com.appcelerator.titanium.desktop.ui;

@:native('Titanium.UI.Menu')
extern class TDMenu {
	public function new():Void {}
	
	// METHODS
	
	/**
	 * Add a check item to this menu with the given attributes. 
	 * 
	 * @param	label										-		The label for the new item
	 * @param	?listener								-		(optional) An event listener callback for the item
	 * @return	UI.MenuItem 
	 */
	public function addCheckItem(label:String, ?listener:Dynamic):TDMenuItem;
	
	/**
	 * Add an item to this menu with the given attributes. 
	 * 
	 * @param	label										-		The label for the new item
	 * @param	iconURL									-		The URL for this item's icon
	 * @param	?listener								-		(optional) An event listener callback for the item
	 * @return	UI.MenuItem 
	 */
	public function addItem(label:String, iconURL:String, ?listener:Dynamic):TDMenuItem;
	
	/**
	 * Add a separator item to this menu. 
	 * 
	 * @return	UI.MenuItem 
	 */
	public function addSeparatorItem():TDMenuItem;
	
	/**
	 * Append a MenuItem object to a menu. 
	 * 
	 * @param	item										-		Append an item to this menu
	 * @return	String
	 */
	public function appendItem(item:TDMenuItem):String;
	
	/**
	 * Remove all items from this menu. 
	 * 
	 * @return	String
	 */
	public function clear():String;
	
	/**
	 * Get an item from this menu at the given index. This method will throw an exception if the index is out 
	 * of range. 
	 * 
	 * @param	index										-		The index of the item to get
	 * @return	UI.MenuItem 
	 */
	public function getItemAt(index:Float):TDMenuItem;
	
	/**
	 * Get the length of this menu. 
	 * 
	 * @return	Float
	 */
	public function getLength():Float;
	
	/**
	 * Insert a menu item before the given index. This method will throw an exception if the index of out of
	 * range. 
	 * 
	 * @param	index										-		The index for this menu item
	 * @return	String
	 */
	public function insertItemAt(index:Float):String;
	
	/**
	 * Remove the item in this menu at the given index. This method will throw an exception if the index is out
	 * of range. 
	 * 
	 * @param	index										-		The index of the item to remove
	 * @return	String
	 */
	public function removeItemAt(index:Float):String;
	
}