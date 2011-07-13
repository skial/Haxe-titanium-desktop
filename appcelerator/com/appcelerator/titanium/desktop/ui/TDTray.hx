/**
 * ...
 * @author Skial Bainn
 */

package com.appcelerator.titanium.desktop.ui;

@:native('Titanium.UI.Tray')
extern class TDTray {
	public function new():Void {}
	
	// METHODS
	
	/**
	 * Get the hint for this TrayItem
	 * 
	 * @return	String
	 */
	public function getHint():String;
	
	/**
	 * Get the icon URL for this TrayItem 
	 * 
	 * @return	String
	 */
	public function getIcon():String;
	
	/**
	 * Get the menu for this TrayItem 
	 * 
	 * @return	UI.Menu|null 
	 */
	public function getMenu():Dynamic;
	
	/**
	 * Removes a TrayItem 
	 * 
	 * @return	String
	 */
	public function remove():String;
	
	/**
	 * Sets a TrayItem's tooltip 
	 * 
	 * @param	?hint										-		(optional) tooltip value or null to unset
	 * @return	String
	 */
	public function setHint(?hint:String):String;
	
	/**
	 * Sets a TrayItem's icon 
	 * 
	 * @param	?icon										-		(optional) path to the icon or null to unset
	 * @return	String
	 */
	public function setIcon(?icon:String):String;
	
	/**
	 * Set the menu for this TrayItem 
	 * 
	 * @param	menu										-		The Menu to use for this TrayItem or null to unset
	 * @return	String
	 */
	public function setMenu(menu:Dynamic):String;
	
}