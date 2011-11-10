/**
 * ...
 * @author Skial Bainn
 */

package com.appcelerator.titanium.desktop.ui;

@:native('Titanium.UI.UserWindow')
extern class TDUserWindow {
	public function new():Void {}
	
	// METHODS
	
	/**
	 * Closes a window 
	 * 
	 * @return	String
	 */
	public function close():String;
	
	/**
	 * Creates a new window as a child of the current window 
	 * 
	 * @param	?options									-		(optional) A string containing a url of the new window or an object 
	 * 																containing properties for the new window
	 * @return	UI.UserWindow 
	 */
	public function createWindow(?options:Dynamic):TDUserWindow;
	
	/**
	 * Focuses a window 
	 * 
	 * @return	String
	 */
	public function focus():String;
	
	/**
	 * Returns the window bounds 
	 * 
	 * @return	Dynamic
	 */
	public function getBounds():Dynamic;
	
	/**
	 * Get all children of this UI.UserWindow. All windows open from the context of this window are considered 
	 * children. When a window is closed all of its children will also be closed automatically. 
	 * 
	 * @return	Array
	 */
	public function getChildren():Array<Dynamic>;
	
	/**
	 * Return the context menu set on this UI.Userwindow or null if none is set. 
	 * 
	 * @return	UI.Menu|null 
	 */
	public function getContextMenu():Dynamic;
	
	/**
	 * Return the WebKit DOMWindow of the page loaded in this window if one exists, otherwise return null. A
	 * DOMWindow object will not be available until a UI.UserWindow's PAGE_INITIALIZED event has fired.
	 * 
	 * @return	DOMWindow|null 
	 */
	public function getDOMWindow():Dynamic;
	
	/**
	 * Returns a window's height 
	 * 
	 * @return	Float
	 */
	public function getHeight():Float;
	
	/**
	 * Returns the id of a window 
	 * 
	 * @return	String
	 */
	public function getID():String;
	
	/**
	 * Returns a window's icon 
	 * 
	 * @return	String
	 */
	public function getIcon():String;
	
	/**
	 * Returns a window's max height 
	 * 
	 * @return	Float
	 */
	public function getMaxHeight():Float;
	
	/**
	 * Returns a window's max-width 
	 * 
	 * @return	Float
	 */
	public function getMaxWidth():Float;
	
	/**
	 * Return the window menu set on this UI.UserWindow if one is set, otherwise return null.
	 * 
	 * @return	UI.Menu|null 
	 */
	public function getMenu():Dynamic;
	
	/**
	 * Returns a window's min-height 
	 * 
	 * @return	Float
	 */
	public function getMinHeight():Float;
	
	/**
	 * Returns a window's min-width
	 * 
	 * @return	Float
	 */
	public function getMinWidth():Float;
	
	/**
	 * Returns the parent window 
	 * 
	 * @return	UI.UserWindow|null 
	 */
	public function getParent():Dynamic;
	
	/**
	 * Returns the title of a window 
	 * 
	 * @return	String
	 */
	public function getTitle():String;
	
	/**
	 * Returns a window's transparency value 
	 * 
	 * @return	Float
	 */
	public function getTransparency():Float;
	
	/**
	 * Returns the url for a window 
	 * 
	 * @return	String
	 */
	public function getURL():String;
	
	/**
	 * Returns a window's width 
	 * 
	 * @return	Float
	 */
	public function getWidth():Float;
	
	/**
	 * @return	Object|null 
	 */
	public function getWindow():Dynamic;
	
	/**
	 * Return a UI.UserWindow's horizontal (X-axis) position on the screen. The origin of the screen is
	 * considered to be the top-left on all platforms. 
	 * 
	 * @return	Float
	 */
	public function getX():Float;
	
	/**
	 * Return a UI.UserWindow's vertical (Y-axis) position on the screen. The origin of the screen is considered 
	 * to be the top-left on all platforms. 
	 * 
	 * @return	Float
	 */
	public function getY():Float;
	
	/**
	 * Checks whether a window has a transparent background or not. If a window has a transparent 
	 * background, transparent colors on the page will show through to windows underneath. 
	 * 
	 * @return	Boolean
	 */
	public function hasTransparentBackground():Bool;
	
	/**
	 * Hides a window 
	 * 
	 * @return	String
	 */
	public function hide():String;
	
	/**
	 * Return true if this window is active. An active window is one that has
	 * finished opening, but has not yet been closed. 
	 * 
	 * @return	Boolean
	 */
	public function isActive():Bool;
	
	/**
	 * Checks whether a window could be closed or not
	 * 
	 * @return	Boolean
	 */
	public function isCloseable():Bool;
	
	/**
	 * Checks whether a window is in fullscreen
	 * 
	 * @return	Boolean
	 */
	public function isFullscreen():Bool;
	
	/**
	 * Checks whether a window could be maximized or not
	 * 
	 * @return	Boolean
	 */
	public function isMaximizable():Bool;
	
	/**
	 * Checks whether a window is maximized
	 * 
	 * @return	Boolean
	 */
	public function isMaximized():Bool;
	
	/**
	 * Checks whether a window could be minimized or not
	 * 
	 * @return	Boolean
	 */
	public function isMinimizable():Bool;
	
	/**
	 * Checks whether a window is minimized
	 * 
	 * @return	Boolean
	 */
	public function isMinimized():Bool;
	
	/**
	 * Checks whether a window is resizable
	 * 
	 * @return	Boolean
	 */
	public function isResizable():Bool;
	
	/**
	 * Checks whether a window is top most
	 * 
	 * @return	Boolean
	 */
	public function isTopMost():Bool;
	
	/**
	 * Checks whether a window uses system chrome
	 * 
	 * @return	Boolean
	 */
	public function isUsingChrome():Bool;
	
	/**
	 * Checks whether a window is visible 
	 * 
	 * @return	Boolean
	 */
	public function isVisible():Bool;
	
	/**
	 * Maximizes a window 
	 * 
	 * @return	String
	 */
	public function maximize():String;
	
	/**
	 * Minimizes a window 
	 * 
	 * @return	String
	 */
	public function minimize():String;
	
	/**
	 * Opens a window 
	 * 
	 * @return	String
	 */
	public function open():String;
	
	/**
	 * Displays the file chooser dialog 
	 * 
	 * @param	handler									-		a callback function to fire after the user closes the dialog
	 * @param	?options									-		(optional) additional options for the dialog
	 * @return	String
	 */
	public function openFileChooserDialog(handler:Dynamic, ?options:Dynamic):String;
	
	/**
	 * Displays the folder chooser dialog 
	 * 
	 * @param	handler									-		a callback function to fire after the user closes the dialog
	 * @param	?options									-		(optional) additional options for the dialog
	 * @return	String
	 */
	public function openFolderChooserDialog(handler:Dynamic, ?options:Dynamic):String;
	
	/**
	 * Displays the save as file dialog 
	 * 
	 * @param	handler									-		a callback function to fire after the user closes the dialog
	 * @param	?options									-		(optional) additional options for the dialog
	 * @return	String
	 */
	public function openSaveAsDialog(handler:Dynamic, ?options:Dynamic):String;
	
	/**
	 * Sets the window bounds 
	 * 
	 * @param	bounds									-		an object containing the value for the window bounds
	 * @return	String
	 */
	public function setBounds(bounds:Dynamic):String;
	
	/**
	 * Sets whether a window could be closed or not 
	 * 
	 * @param	closeable								-		true if the window could be closed
	 * @return	String
	 */
	public function setCloseable(closeable:Bool):String;
	
	/**
	 * Set this window's context menu 
	 * 
	 * @param	menu										-		The Menu object to use as the context menu or null to unset
	 * @return	String
	 */
	public function setContextMenu(menu:Dynamic):String;
	
	/**
	 * Makes a window fullscreen 
	 * 
	 * @param	fullscreen								-		set to true for fullscreen
	 * @return	String
	 */
	public function setFullscreen(fullscreen:Bool):String;
	
	/**
	 * Sets a window's height 
	 * 
	 * @param	height									-		the height value of the window
	 * @return	String
	 */
	public function setHeight(height:Float):String;
	
	/**
	 * Sets a window's icon 
	 * 
	 * @param	icon										-		path to the icon file
	 * @return	String
	 */
	public function setIcon(icon:String):String;
	
	/**
	 * Sets a window's max-height 
	 * 
	 * @param	height									-		the max-height value of the window
	 * @return	String
	 */
	public function setMaxHeight(height:Float):String;
	
	/**
	 * Sets a window's max-width 
	 * 
	 * @param	width										-		the max-width value of the window
	 * @return	String
	 */
	public function setMaxWidth(width:Float):String;
	
	/**
	 * Sets whether a window could be maximized or not 
	 * 
	 * @param	maximizable								-		true if the window could be maximized
	 * @return	String
	 */
	public function setMaximizable(maximizable:Bool):String;
	
	/**
	 * Set this window's menu 
	 * 
	 * @param	menu										-		The Menu object to use as the menu or null to unset
	 * @return	String
	 */
	public function setMenu(menu:Dynamic):String;
	
	/**
	 * Sets a window's min height 
	 * 
	 * @param	height									-		the min-height value of the window
	 * @return	String
	 */
	public function setMinHeight(height:Float):String;
	
	/**
	 * Sets a window's min-width 
	 * 
	 * @param	width										-		the min-width value of the window
	 * @return	String
	 */
	public function setMinWidth(width:Float):String;
	
	/**
	 * Sets whether a window could be maximized or not 
	 * 
	 * @param	minimizable								-		true if the window could be minimized
	 * @return	String
	 */
	public function setMinimizable(minimizable:Bool):String;
	
	/**
	 * Sets whether a window could be resized or not 
	 * 
	 * @param	resizable								-		true if the window could be resized
	 * @return	String
	 */
	public function setResizable(resizable:Bool):String;
	
	/**
	 * Sets the title of a window 
	 * 
	 * @param	title										-		the title of the window
	 * @return	String
	 */
	public function setTitle(title:Dynamic):String;
	
	/**
	 * Sets whether a window is top most (above other windows) 
	 * 
	 * @param	topmost									-		true if top most
	 * @return	String
	 */
	public function setTopMost(topmost:Bool):String;
	
	/**
	 * Sets a window's transparency value 
	 * 
	 * @param	url										-		the transparency value of the window
	 * @return	String
	 */
	public function setTransparency(url:Float):String;
	
	/**
	 * Sets the url for a window 
	 * 
	 * @param	url										-		the url for the window
	 * @return	String
	 */
	public function setURL(url:String):String;
	
	/**
	 * Sets whether a window should use system chrome 
	 * 
	 * @param	chrome									-		set to true to use system chrome
	 * @return	String
	 */
	public function setUsingChrome(chrome:Bool):String;
	
	/**
	 * Sets the visibility of the window 
	 * 
	 * @param	visible									-		true if the window should be visible
	 * @return	String
	 */
	public function setVisible(visible:Bool):String;
	
	/**
	 * Sets a window's width 
	 * 
	 * @param	width										-		the width of the window
	 * @return	String
	 */
	public function setWidth(width:Float):String;
	
	/**
	 * Set a UI.UserWindow's horizontal (X-axis) position on the screen. The origin of the screen is considered 
	 * to be the top-left on all platforms. 
	 * 
	 * @param	x											-		the horizontal position
	 * @return	String
	 */
	public function setX(x:Float):String;
	
	/**
	 * Set a UI.UserWindow's vertical (Y-axis) position on the screen. The origin of the screen is considered to
	 * be the top-left on all platforms. 
	 * 
	 * @param	y											-		the vertical position
	 * @return	String
	 */
	public function setY(y:Float):String;
	
	/**
	 * Shows a window 
	 * 
	 * @return	String
	 */
	public function show():String;
	
	/**
	 * Show a UI.UserWindow's web inspector. 
	 * 
	 * @param	?console									-		(optional) Open the console along with the inspector (defaults to false).
	 * @return	String
	 */
	public function showInspector(?console:Bool):String;
	
	/**
	 * Unfocuses a window 
	 * 
	 * @return	String
	 */
	public function unfocus():String;
	
	/**
	 * Unmaximizes a window 
	 * 
	 * @return	String
	 */
	public function unmaximize():String;
	
	/**
	 * Unminimizes a window
	 * 
	 * @return	String
	 */
	public function unminimize():String;
	
	// PROPERTIES
	
	/**
	 * true if this window is a UI Dialog
	 */
	public var isDialog:Bool;
	
}