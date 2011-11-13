package titanium.ui;
import titanium.ui.UserWindow;
import titanium.ui.Menu;
/**
 * An object representing a top-level Titanium window.
 * @since	0.2.0
 */
@:native("Titanium.UI.UserWindow")
extern class UserWindow {

	/**
	 * true if this window is a UI Dialog
	 * @since	0.4.0
	 */
	public var isDialog:Bool;
	public function new():Void;

	/**
	 * Closes a window
	 * @return	String
	 * @since	0.2.0
	 */
	public function close():String;

	/**
	 * Creates a new window as a child of the current window
	 * @param	options	(optional) A string containing a url of the new window or an object containing properties for the new window
	 * @return	UserWindow
	 * @since	0.2.0
	 */
	@:overload(public function createWindow(options:String):UserWindow{})
	public function createWindow(options:Dynamic):UserWindow;

	/**
	 * Focuses a window
	 * @return	String
	 * @since	0.2.0
	 */
	public function focus():String;

	/**
	 * Return this window's bounds object. A bounds object is a simple JavaScript object
	 * containing four properties <tt>x</tt>, <tt>y</tt>, <tt>width<tt>, and <tt>height</tt>
	 * which correspond to the window geometry on the screen in pixels.
	 * @return	Dynamic
	 * @since	0.2.0
	 */
	public function getBounds():Dynamic;

	/**
	 * Get all children of this UI.UserWindow. All windows open
	 * from the context of this window are considered children.
	 * When a window is closed all of its children will also
	 * be closed automatically.
	 * @return	Array<UserWindow>
	 * @since	0.5.0
	 */
	public function getChildren():Array<UserWindow>;

	/**
	 * Return the context menu set on this UI.Userwindow or null if none is set.
	 * @return	Menu
	 * @since	0.5.0
	 */
	public function getContextMenu():Menu;

	/**
	 * Return the WebKit DOMWindow of the page loaded in this window if
	 * one exists, otherwise return null. A DOMWindow object will not
	 * be available until a UI.UserWindow's PAGE_INITIALIZED event has
	 * fired.
	 * @return	DOMWindow
	 * @since	0.5.0
	 */
	public function getDOMWindow():DOMWindow;

	/**
	 * Return this window's height in pixels.
	 * @return	Float
	 * @since	0.2.0
	 */
	public function getHeight():Float;

	/**
	 * Return this window's icon, if one is set or null
	 * @return	String|Null
	 * @since	0.2.0
	 */
	@:overload(public function getIcon():String{})
	public function getIcon():Void;

	/**
	 * Return this window's configuration id.
	 * @return	String
	 * @since	0.2.0
	 */
	public function getID():String;

	/**
	 * Return this window's maximum height.
	 * @return	Float
	 * @since	0.2.0
	 */
	public function getMaxHeight():Float;

	/**
	 * Return this window's maximum height in pixels.
	 * @return	Float
	 * @since	0.2.0
	 */
	public function getMaxWidth():Float;

	/**
	 * Return the window menu set on this UI.UserWindow if one is set, otherwise return null.
	 * @return	Menu
	 * @since	0.5.0
	 */
	public function getMenu():Menu;

	/**
	 * Return this window's minimum height.
	 * @return	Float
	 * @since	0.2.0
	 */
	public function getMinHeight():Float;

	/**
	 * Return this window's minimum width.
	 * @return	Float
	 * @since	0.2.0
	 */
	public function getMinWidth():Float;

	/**
	 * Return this window's parent window or null if it is a top-level window.
	 * @return	UserWindow
	 * @since	0.3.0
	 */
	public function getParent():UserWindow;

	/**
	 * Return the title of this window.
	 * @return	String
	 * @since	0.2.0
	 */
	public function getTitle():String;

	/**
	 * Return this window's opacity.
	 * @return	Float
	 * @since	0.2.0
	 */
	public function getTransparency():Float;

	/**
	 * Return this window's current URL."
	 * @return	String
	 * @since	0.2.0
	 */
	public function getURL():String;

	/**
	 * Return this window's width in pixels.
	 * @return	Float
	 * @since	0.2.0
	 */
	public function getWidth():Float;

	/**
	 * Return a window's horizontal (X-axis) position.
	 * @return	Float
	 * @since	0.2.0
	 */
	public function getX():Float;

	/**
	 * Return a UI.UserWindow's vertical (Y-axis) position on the screen. The
	 * origin of the screen is considered to be the top-left on all platforms.
	 * @return	Float
	 * @since	0.2.0
	 */
	public function getY():Float;

	/**
	 * Checks whether a window has a transparent background or not. If a window has a transparent background, transparent colors on the page will show through to windows underneath.
	 * @return	Bool
	 * @since	0.8.0
	 */
	public function hasTransparentBackground():Bool;

	/**
	 * Hides a window
	 * @return	String
	 * @since	0.2.0
	 */
	public function hide():String;

	/**
	 * Return true if this window is active. An active window is one
	 * that has finished opening, but has not yet been closed.
	 * @return	Bool
	 * @since	0.7.0
	 */
	public function isActive():Bool;

	/**
	 * Checks whether a window could be closed or not
	 * @return	Bool
	 * @since	0.2.0
	 */
	public function isCloseable():Bool;

	/**
	 * Checks whether a window is in an edited state
	 * @return	Bool
	 * @since	1.1.0
	 */
	public function isDocumentEdited():Bool;

	/**
	 * Checks whether a window is in fullscreen
	 * @param	chrome	true if the window is in fullscreen
	 * @return	String
	 * @since	0.5.0
	 */
	public function isFullscreen(chrome:Bool):String;

	/**
	 * Checks whether a window could be maximized or not
	 * @return	String
	 * @since	0.2.0
	 */
	public function isMaximizable():String;

	/**
	 * Checks whether a window is maximized
	 * @return	Bool
	 * @since	0.4.0
	 */
	public function isMaximized():Bool;

	/**
	 * Checks whether a window could be minimized or not
	 * @return	Bool
	 * @since	0.2.0
	 */
	public function isMinimizable():Bool;

	/**
	 * Checks whether a window is minimized
	 * @return	Bool
	 * @since	0.4.0
	 */
	public function isMinimized():Bool;

	/**
	 * Checks whether a window is resizable
	 * @return	Bool
	 * @since	0.2.0
	 */
	public function isResizable():Bool;

	/**
	 * Checks whether a window is top most
	 * @return	Bool
	 * @since	0.3.0
	 */
	public function isTopMost():Bool;

	/**
	 * Checks whether a window uses system chrome
	 * @return	Bool
	 * @since	0.2.0
	 */
	public function isUsingChrome():Bool;

	/**
	 * Checks whether a window is visible
	 * @return	Bool
	 * @since	0.2.0
	 */
	public function isVisible():Bool;

	/**
	 * Maximizes a window
	 * @return	String
	 * @since	0.4.0
	 */
	public function maximize():String;

	/**
	 * Minimizes a window
	 * @return	String
	 * @since	0.4.0
	 */
	public function minimize():String;

	/**
	 * Set a UI.UserWindow's position on the screen. The
	 * origin of the screen is considered to be the top-left on all platforms.
	 * @param	x	the horizontal position
	 * @param	y	the vertical position
	 * @return	Void
	 * @since	1.1.0
	 */
	public function moveTo(x:Float, y:Float):Void;

	/**
	 * Opens a window
	 * @return	String
	 * @since	0.2.0
	 */
	public function open():String;

	/**
	 * <p>
	 * Displays a file chooser dialog. This is suitable for use cases where you
	 * need the user to select what file(s) to open or be saved.
	 * </p>
	 * 
	 * <p>
	 * Available Options:
	 * <ul>
	 *     <li>multiple: true/false - allow user to select multple files [default: true]</li>
	 *     <li>title: string used as the title of the dialog box</li>
	 *     <li>path: location where browsing of files should begin when dialog opens</li>
	 *     <li>types: list of allowable file types that user can pick (ex: js, html, txt)</li>
	 * </ul>
	 * </p>
	 * @param	callback	a callback function to fire after the user closes the dialog
	 * @param	options	(optional) additional options for the dialog
	 * @return	String
	 * @since	0.4.0
	 */
	public var openFileChooserDialog:Dynamic->Dynamic->String;

	/**
	 * Displays the folder chooser dialog
	 * @param	callback	a callback function to fire after the user closes the dialog
	 * @param	options	(optional) additional options for the dialog
	 * @return	String
	 * @since	0.4.0
	 */
	public var openFolderChooserDialog:Dynamic->Dynamic->String;

	/**
	 * Displays the save as file dialog.
	 * Available options:
	 *     title: string to use for dialog title
	 *     path: path to where the dialog should be opened at
	 *     types: list of file extensions that are allowed to be selected
	 *     multiple: if true, allow user to select more than one file [default: true]
	 *     defaultFile: default name to be used for saving
	 * @param	callback	a callback function to fire after the user closes the dialog
	 * @param	options	(optional) additional options for the dialog
	 * @return	Void
	 * @since	0.4.0
	 * @example	<pre><code>
		    Titanium.UI.currentWindow.openSaveAsDialog(callback, {
		        title: "Save document...",
		        path: "/home/user/Documents",
		        types: ['txt', 'doc'],
		        defaultFile: "unnamed.txt",
		        multiple: false
		    });
		</pre></codee>
		
	 */
	public var openSaveAsDialog:Dynamic->Dynamic->Void;

	/**
	 * Set this window's bounds object. A bounds object is a simple JavaScript object
	 * containing four properties <tt>x</tt>, <tt>y</tt>, <tt>width<tt>, and <tt>height</tt>
	 * which correspond to the window geometry on the screen in pixels.
	 * @param	bounds	an object containing the value for the window bounds
	 * @return	String
	 * @since	0.2.0
	 */
	public function setBounds(bounds:Dynamic):String;

	/**
	 * Sets whether a window could be closed or not
	 * @param	closeable	true if the window could be closed
	 * @return	String
	 * @since	0.2.0
	 */
	public function setCloseable(closeable:Bool):String;

	/**
	 * Set the contents of the UserWindow, given an HTML string
	 * and a base URL. Relative links in the HTML will be resolved
	 * relatively to the base URL.
	 * @param	contents	The HTML string to inject into the UserWindow.
	 * @param	baseURL	(optional) The base URL of the URL string. If omitted URLs will be resolved relative to the root of the app resources directory.
	 * @return	String
	 * @since	0.9.0
	 */
	public function setContents(contents:String, baseURL:String):String;

	/**
	 * Set this window's context menu
	 * @param	menu	The Menu object to use as the context menu or null to unset the menu.
	 * @return	String
	 * @since	0.5.0
	 */
	public function setContextMenu(menu:Menu):String;

	/**
	 * Set a window to the edited (a dot in the close button) or unedited state. OS X only.
	 * @param	edited	true if the window is edited
	 * @return	Void
	 * @since	1.1.0
	 */
	public function setDocumentEdited(edited:Bool):Void;

	/**
	 * Makes a window fullscreen
	 * @param	fullscreen	set to true for fullscreen
	 * @return	String
	 * @since	0.5.0
	 */
	public function setFullscreen(fullscreen:Bool):String;

	/**
	 * Sets a window's height
	 * @param	height	the height value of the window
	 * @return	String
	 * @since	0.2.0
	 */
	public function setHeight(height:Float):String;

	/**
	 * Sets a window's icon
	 * @param	icon	path to the icon file
	 * @return	String
	 * @since	0.2.0
	 */
	public function setIcon(icon:String):String;

	/**
	 * Sets a window's max-height
	 * @param	height	the max-height value of the window
	 * @return	String
	 * @since	0.2.0
	 */
	public function setMaxHeight(height:Float):String;

	/**
	 * Sets whether a window could be maximized or not
	 * @param	maximizable	true if the window could be maximized
	 * @return	String
	 * @since	0.2.0
	 */
	public function setMaximizable(maximizable:Bool):String;

	/**
	 * Sets a window's max-width
	 * @param	width	the max-width value of the window
	 * @return	String
	 * @since	0.2.0
	 */
	public function setMaxWidth(width:Float):String;

	/**
	 * Set this window's menu
	 * @param	menu	The Menu object to use as the menu or null to unset the menu.
	 * @return	String
	 * @since	0.5.0
	 */
	public function setMenu(menu:Menu):String;

	/**
	 * Sets a window's min height
	 * @param	height	the min-height value of the window
	 * @return	String
	 * @since	0.2.0
	 */
	public function setMinHeight(height:Float):String;

	/**
	 * Sets whether a window could be maximized or not
	 * @param	minimizable	true if the window could be minimized
	 * @return	String
	 * @since	0.2.0
	 */
	public function setMinimizable(minimizable:Bool):String;

	/**
	 * Sets a window's min-width
	 * @param	width	the min-width value of the window
	 * @return	String
	 * @since	0.2.0
	 */
	public function setMinWidth(width:Float):String;

	/**
	 * Set if plugins are enabled
	 * @param	enabled	true if plugins should be enabled
	 * @return	undefined
	 * @since	1.1.0
	 */
	public function setPluginsEnabled(enabled:Bool):undefined;

	/**
	 * Sets whether a window could be resized or not
	 * @param	resizable	true if the window could be resized
	 * @return	String
	 * @since	0.2.0
	 */
	public function setResizable(resizable:Bool):String;

	/**
	 * Sets a window's width and height.
	 * @param	width	the width of the window
	 * @param	height	the height of the window
	 * @return	undefined
	 * @since	1.3.0
	 */
	public function setSize(width:Float, height:Float):undefined;

	/**
	 * Sets the title of a window
	 * @param	title	the title of the window
	 * @return	String
	 * @since	0.2.0
	 */
	public function setTitle(title:Dynamic):String;

	/**
	 * Sets whether a window is top most (above other windows)
	 * @param	topmost	true if top most
	 * @return	String
	 * @since	0.3.0
	 */
	public function setTopMost(topmost:Bool):String;

	/**
	 * Sets a window's transparency value
	 * @param	url	the transparency value of the window
	 * @return	String
	 * @since	0.2.0
	 */
	public function setTransparency(url:Float):String;

	/**
	 * Sets the url for a window
	 * @param	url	the url for the window
	 * @return	String
	 * @since	0.2.0
	 */
	public function setURL(url:String):String;

	/**
	 * Sets whether a window should use system chrome
	 * @param	chrome	set to true to use system chrome
	 * @return	String
	 * @since	0.2.0
	 */
	public function setUsingChrome(chrome:Bool):String;

	/**
	 * Sets the visibility of the window
	 * @param	visible	true if the window should be visible
	 * @return	String
	 * @since	0.2.0
	 */
	public function setVisible(visible:Bool):String;

	/**
	 * Sets a window's width
	 * @param	width	the width of the window
	 * @return	String
	 * @since	0.2.0
	 */
	public function setWidth(width:Float):String;

	/**
	 * Set a UI.UserWindow's horizontal (X-axis) position on the screen. The
	 * origin of the screen is considered to be the top-left on all platforms.
	 * @param	x	the horizontal position
	 * @return	String
	 * @since	0.2.0
	 */
	public function setX(x:Float):String;

	/**
	 * Set a UI.UserWindow's vertical (Y-axis) position on the screen. The
	 * origin of the screen is considered to be the top-left on all platforms.
	 * @param	y	the vertical position
	 * @return	String
	 * @since	0.2.0
	 */
	public function setY(y:Float):String;

	/**
	 * Shows a window
	 * @return	String
	 * @since	0.2.0
	 */
	public function show():String;

	/**
	 * Show a UI.UserWindow's web inspector.
	 * @param	console	(optional) Open the console along with the inspector (defaults to false).
	 * @return	String
	 * @since	0.5.0
	 */
	public function showInspector(console:Bool):String;

	/**
	 * Unfocuses a window
	 * @return	String
	 * @since	0.2.0
	 */
	public function unfocus():String;

	/**
	 * Unmaximizes a window
	 * @return	String
	 * @since	0.4.0
	 */
	public function unmaximize():String;

	/**
	 * Unminimizes a window
	 * @return	String
	 * @since	0.4.0
	 */
	public function unminimize():String;
}