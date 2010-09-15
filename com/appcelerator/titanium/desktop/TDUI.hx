/**
 * ...
 * @author Skial Bainn
 */

package com.appcelerator.titanium.desktop;

import com.appcelerator.titanium.desktop.ui.TDClipboard;
import com.appcelerator.titanium.desktop.ui.TDDialog;
import com.appcelerator.titanium.desktop.ui.TDMenu;
import com.appcelerator.titanium.desktop.ui.TDMenuItem;
import com.appcelerator.titanium.desktop.ui.TDTray;
import com.appcelerator.titanium.desktop.ui.TDUserWindow;

@:native('Titanium.UI')
extern class TDUI {
	public function new():Void {}
	
	// OBJECTS
	
	/**
	 * A module used for accessing clipboard data.
	 */
	public var Clipboard:TDClipboard;
	
	/**
	 * An object representing a Dialog window.
	 */
	public var Dialog:TDDialog;
	
	/**
	 * An object representing a menu.
	 */
	public var Menu:TDMenu;
	
	/**
	 * An object representing a menu item.
	 */
	public var MenuItem:TDMenuItem;
	
	/**
	 * An object representing a TrayItem.
	 */
	public var Tray:TDTray;
	
	/**
	 * An object representing a top-level Titanium window.
	 */
	public var UserWindow:TDUserWindow;
	
	// FUNCTIONS
	
	/**
	 * Create and add a tray icon 
	 * 
	 * @param	iconUrl										-		URL to the icon to use for this tray item
	 * @param	?eventListener								-		(optional) Event listener to add for this item
	 * @return	UI.Tray|null 
	 */
	public function addTray(iconUrl:String, ?eventListener:Dynamic):Dynamic;
	
	/**
	 * Empty the tray of all this application's tray items 
	 */
	public function clearTray():Void;
	
	/**
	 * Create a new CheckMenuItem object. 
	 * 
	 * @param	label											-		The label for this menu item
	 * @param	?eventListener								-		(optional) An event listener for this menu item
	 * @return	UI.CheckMenuItem 
	 */
	public function createCheckMenuItem(label:String, ?eventListener:Dynamic):Dynamic;//??
	
	/**
	 * Create a new menu 
	 * 
	 * @return	UI.Menu 
	 */
	public function createMenu():TDMenu;
	
	/**
	 * Create a new menu item. 
	 * 
	 * @param	label											-		The label for this menu item
	 * @param	?eventListener								-		(optional) An event listener for this menu item
	 * @param	?iconURL										-		(optional) A URL to an icon to use for this menu item
	 * @return	UI.MenuItem 
	 */
	public function createMenuItem(label:String, ?eventListener:Dynamic, ?iconURL:String):TDMenuItem;
	
	/**
	 * Create a new separator menu item. 
	 * 
	 * @return	UI.SeparatorMenuItem 
	 */
	public function createSeperatorMenuItem():Dynamic;//??
	
	/**
	 * Create a new top-level window or a child of the current window if called from the context of an existing window. 
	 * 
	 * @param	?options										-		(optional) A string containing a url of the new window or an object 
	 * 																	containing properties for the new window
	 * @return	UI.UserWindow 
	 */
	public function createWindow(?options:Dynamic):TDUserWindow;
	
	/**
	 * Returns the application context menu 
	 * 
	 * @return	UI.Menu|null 
	 */
	public function getContextMenu():Dynamic;
	
	/**
	 * Returns the current window
	 * 
	 * @return	UI.UserWindow 
	 */
	public function getCurrentWindow():TDUserWindow;
	
	/**
	 * Returns the user's idle time (for the desktop, not just the application) 
	 * 
	 * @return	Float
	 */
	public function getIdleTime():Float;
	
	/**
	 * Return the application's main window 
	 * 
	 * @return	UI.UserWindow 
	 */
	public function getMainWindow():TDUserWindow;
	
	/**
	 * Returns the application's main MenuItem 
	 * 
	 * @return	UI.Menu|null 
	 */
	public function getMenu():Dynamic;
	
	/**
	 * Returns the list of currently open windows 
	 * 
	 * @return	Array
	 */
	public function getOpenWindows():Array<Dynamic>;
	
	/**
	 * Returns the list of currently open windows 
	 * 
	 * @return	Array
	 */
	public function getWindows():Array<Dynamic>;
	
	/**
	 * Set the application icon's badge text. 
	 * 
	 * @param	text											-		The new badge text.
	 * @return	String
	 */
	public function setBadge(text:String):String;
	
	/**
	 * Set the application icon's badge image. 
	 * 
	 * @param	imageURL										-		URL to the new badge image.
	 * @return	String
	 */
	public function setBadgeImage(imageURL:String):String;
	
	/**
	 * Set the application's context menu 
	 * 
	 * @param	menu											-		 a MenuItem object or null to unset 
	 * @return	String
	 */
	public function setContextMenu(menu:Dynamic):String;
	
	/**
	 * Set the dock icon 
	 * 
	 * @param	icon											-		 path to the icon 
	 * @return	String
	 */
	public function setDockIcon(icon:String):String;
	
	/**
	 * Set the dock menu 
	 * 
	 * @param	menu											-		The new menu for the dock
	 * @return	String
	 */
	public function setDockMenu(menu:TDMenu):String;
	
	/**
	 * Set the application's icon 
	 * 
	 * @param	menu											-		path to the icon
	 * @return	String
	 */
	public function setIcon(menu:String):String;
	
	/**
	 * Set a menu for the application 
	 * 
	 * @param	menu											-		A Menu object to use as the menu or null to unset the menu
	 * @return	String
	 */
	public function setMenu(menu:Dynamic):String;
	
	/**
	 * create a UI dialog 
	 * 
	 * @param	params										-		options to pass in to create window
	 * @return	UI.Dialog 
	 */
	public function showDialog(params:Dynamic):TDDialog;
	
	// PROPERTIES
	
	/**
	 * The CENTERED event constant
	 */
	public var CENTERED:Float;
	
}