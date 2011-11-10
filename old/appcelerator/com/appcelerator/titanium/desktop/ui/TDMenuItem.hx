/**
 * ...
 * @author Skial Bainn
 */

package com.appcelerator.titanium.desktop.ui;

@:native('Titanium.UI.MenuItem')
extern class TDMenuItem {
	public function new():Void {}
	
	// METHODS
	
	/**
	 * Add a check item to this menu item's submenu with the given attributes. If this menu item does not
	 * have a submenu, it will be created. This method is not available for separator items. 
	 * 
	 * @param	label									-		The label for the new item
	 * @param	?listener							-		(optional) An event listener callback for the item
	 * @return	UI.MenuItem 
	 */
	public function addCheckItem(label:String, ?listener:Dynamic):TDMenuItem;
	
	/**
	 * Add an item to this menu item's submenu with the given attributes. If this menu item does not have a 
	 * submenu, it will be created. This method is not available for separator items. 
	 * 
	 * @param	label									-		The label for the new item 
	 * @param	iconURL								-		The URL for this item's icon
	 * @param	?listener							-		(optional) An event listener callback for the item
	 * @return	UI.MenuItem 
	 */
	public function addItem(label:String, iconURL:String, ?listener:Dynamic):TDMenuItem;
	
	/**
	 * Add a separator item to this menu item's submenu. If this menu item does not have a submenu, it will be
	 * created. This method is not available for separator items. 
	 * 
	 * @return	UI.MenuItem 
	 */
	public function addSeparatorItem():TDMenuItem;
	
	/**
	 * Disable this item i.e. make it non-clickable. This method is not available for separator items. 
	 * 
	 * @return	String
	 */
	public function disable():String;
	
	/**
	 * Enable this item i.e. make it clickable. This method is not available for separator items. 
	 * 
	 * @return	String
	 */
	public function enable():String;
	
	/**
	 * This method is only available for check items. 
	 * 
	 * @param	autocheck							-		Whether or not this item should is an autocheck
	 * @return	String
	 */
	public function getAutoCheck(autocheck:Bool):String;
	
	/**
	 * Get this item's icon URL This method is not available for separator or check items. 
	 * 
	 * @return	String|null 
	 */
	public function getIcon():Dynamic;
	
	/**
	 * Get this item's label. This method is not available for separator items. 
	 * 
	 * @return	String
	 */
	public function getLabel():String;
	
	/**
	 * Gets the state of this check item This method is only available for check items. 
	 * 
	 * @return	Boolean
	 */
	public function getState():Bool;
	
	/**
	 * Get this item's submenu. This method is not available for separator items. 
	 * 
	 * @return	UI.Menu|null 
	 */
	public function getSubmenu():Dynamic;
	
	/**
	 * Return true if this UI.MenuItem is a check menu item or false otherwise.
	 * 
	 * @return	Boolean
	 */
	public function isCheck():Bool;
	
	/**
	 * This method is not available for separator items. 
	 * 
	 * @return	Boolean
	 */
	public function isEnabled():Bool;
	
	/**
	 * Return true if this UI.MenuItem is seperator menu item or false otherwise. 
	 * 
	 * @return	Boolean
	 */
	public function isSeparator():Bool;
	
	/**
	 * Set whether or not this check item is an autocheck item. An autocheck item (the default) will 
	 * automatically flip the state of the check on a a click event. Turning off this behavior makes the check 
	 * item more useful as a radio button. This method is only available for check items. 
	 * 
	 * @param	autocheck							-		Whether or not this item should be an autocheck
	 * @return	String
	 */
	public function setAutoCheck(autocheck:Bool):String;
	
	/**
	 * Set the icon URL for this item This method is not available for separator or check items. 
	 * 
	 * @param	iconURL								-		The new icon URL for this item or null to unset it
	 * @return	String
	 */
	public function setIcon(iconURL:Dynamic):String;
	
	/**
	 * Set the label for this item. This method is not available for separator items. 
	 * 
	 * @param	label									-		The new label for this item
	 * @return	String
	 */
	public function setLabel(label:String):String;
	
	/**
	 * Sets the state of this check item This method is only available for check items. 
	 * 
	 * @param	state									-		A True state is checked
	 * @return	String
	 */
	public function setState(state:Bool):String;
	
	/**
	 * Set this item's submenu. This method is not available for separator items. 
	 * 
	 * @param	menu									-		The submenu to use for this item or null to unset it
	 * @return
	 */
	public function setSubmenu(menu:Dynamic):String;
	
}