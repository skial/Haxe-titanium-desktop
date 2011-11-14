package titanium;
import titanium.ui.Dialog;
import titanium.ui.Tray;
import titanium.ui.UserWindow;
import titanium.ui.CheckMenuItem;
import titanium.ui.MenuItem;
import titanium.ui.Menu;
import titanium.ui.SeparatorMenuItem;
/**
 * A module for controlling the user interface.
 * @since	0.2.0
 */
@:native("Titanium.UI")
extern class UI {

	/**
	 * The CENTERED event constant
	 * @since	0.6.0
	 */
	public static var CENTERED:Float;

	/**
	 * Create and add a tray icon
	 * @param	iconURL	Local URL on system which app is running on to the icon location
	 * @param	eventListener	(optional) Event listener to add for this item
	 * @return	Tray
	 * @since	0.2.0
	 */
	public static function addTray(iconURL:String, eventListener:Dynamic):Tray;

	/**
	 * Empty the tray of all this application's tray items
	 * @return	Void
	 * @since	0.2.0
	 */
	public static function clearTray():Void;

	/**
	 * Create a new CheckMenuItem object.
	 * @param	label	The label for this menu item
	 * @param	eventListener	(optional) An event listener for this menu item
	 * @return	CheckMenuItem
	 * @since	0.6.0
	 */
	public static function createCheckMenuItem(label:String, eventListener:Dynamic):CheckMenuItem;

	/**
	 * Create a new menu
	 * @return	Menu
	 * @since	0.6.0
	 * @example	<pre><code>
		    var menu = Titanium.UI.createMenu();
		    var file = Titanium.UI.createMenuItem("File");
		    file.addItem("Quit");
		    menu.appendItem(file);
		    Titanium.UI.setMenu(menu);
		</pre></codee>
		
	 */
	public static function createMenu():Menu;

	/**
	 * Create a new menu item.
	 * @param	label	The label for this menu item
	 * @param	eventListener	(optional) An event listener for this menu item
	 * @param	iconURL	(optional) A URL to an icon to use for this menu item
	 * @return	MenuItem
	 * @since	0.6.0
	 * @example	<pre><code>
		    // Creating a menu item with no callback.
		    var file = Titanium.UI.createMenuItem('File', function() {
		        alert('File activated');
		    });
		    menu.appendItem(file); // This item has no callback.
		
		    // Creating a menu item without a callback and adding one later.
		    var help = Titanium.UI.createMenuItem('Help');
		    menu.appendItem(help);
		
		    help.addEventListener(Titanium.CLICKED, function(event)
		    {
		        alert("Help activated");
		    });
		</pre></codee>
		
	 */
	public static function createMenuItem(label:String, eventListener:Dynamic, iconURL:String):MenuItem;

	/**
	 * Create a new separator menu item.
	 * @return	SeparatorMenuItem
	 * @since	0.6.0
	 */
	public static function createSeperatorMenuItem():SeparatorMenuItem;

	/**
	 * <p>
	 * Create a new child window of the current window. This means that
	 * when the originating window is closed, the new window will be closed
	 * as well. If this function is called outside of the context of a window
	 * it will create a new top-level window.
	 * </p>
	 * 
	 * <p>
	 * There are three ways to call this function. You may pass no arguments,
	 * in which case the new window will have the same configuration as the
	 * originating window. You may also simply pass a new absolute URL:
	 * <pre><code>
	 *     Titanium.UI.createWindow("app://second_page.html");
	 * </code></pre>
	 * If the URL matches the url or url-regex field of a tiapp.xml window
	 * configuration, then the window will use that configuration. For more
	 * information see the <a href="http://developer.appcelerator.com/doc/desktop/tiapp.xml">tiapp.xml guide</a>.
	 * </p>
	 * 
	 * <p>
	 * A window may also be craeated with an options object. Almost every
	 * field in a tiapp.xml window configuration has a corresponding field
	 * in the options object. Below is a call which uses every field:
	 * <pre><code>
	 *     Titanium.UI.createWindow({
	 *         id: "propertyWindow",
	 *         url: "app://second_page.html",
	 *         title: "My New Window",
	 *         contents: "<html>foo!</html>"
	 *         baseURL: "app://page_url"
	 *         x: 300,
	 *         y: 400,
	 *         width: 500,
	 *         minWidth: 500,
	 *         maxWidth: 500,
	 *         height: 500,
	 *         minHeight: 500,
	 *         maxHeight: 500,
	 *         maximizable: true,
	 *         minimizable: true,
	 *         closeable: true,
	 *         resizable: true,
	 *         fullscreen: false,
	 *         maximized: false,
	 *         minimized: false,
	 *         usingChrome: true,
	 *         topMost: false,
	 *         visible: true,
	 *         transparentBackground: false,
	 *         transparency: false
	 *     });
	 * </code></pre>
	 * For more information on what these properties do, please see the
	 * <a href="http://developer.appcelerator.com/doc/desktop/tiapp.xml">tiapp.xml guide</a>.
	 * </p>
	 * @param	options	(optional) A string containing a url of the new window or an object containing properties for the new window
	 * @return	UserWindow
	 * @since	0.8.1
	 */
	@:overload(public static function createWindow(options:String):UserWindow{})
	public static function createWindow(options:Dynamic):UserWindow;

	/**
	 * Return this application's context menu or null if none is set.
	 * @return	Menu
	 * @since	0.2.0
	 */
	public static function getContextMenu():Menu;

	/**
	 * Return the current window. This function does not exist outside of the context
	 * of a window.
	 * @return	UserWindow
	 * @since	0.4.0
	 */
	public static function getCurrentWindow():UserWindow;

	/**
	 * Return the user's idle time (for the desktop, not just the application)
	 * @return	Float
	 * @since	0.2.0
	 */
	public static function getIdleTime():Float;

	/**
	 * Return the application's main window
	 * @return	UserWindow
	 * @since	0.6.0
	 */
	public static function getMainWindow():UserWindow;

	/**
	 * Return the application's main MenuItem or null if none is set.
	 * @return	Menu
	 * @since	0.2.0
	 */
	public static function getMenu():Menu;

	/**
	 * Return a list of currently open windows.
	 * @return	Array<UserWindow>
	 * @since	0.8.0
	 */
	public static function getOpenWindows():Array<UserWindow>;

	/**
	 * Return a list of currently open windows.
	 * @return	Array<UserWindow>
	 * @since	0.8.0
	 */
	public static function getWindows():Array<UserWindow>;

	/**
	 * Set the application icon's badge text.
	 * @param	text	The new badge text.
	 * @return	String
	 * @since	0.2.0
	 */
	public static function setBadge(text:String):String;

	/**
	 * Set the application icon's badge image.
	 * @param	imageURL	URL to the new badge image.
	 * @return	String
	 * @since	0.2.0
	 */
	public static function setBadgeImage(imageURL:String):String;

	/**
	 * Set the application's context menu
	 * @param	menu	a MenuItem object or null to unset the menu.
	 * @return	String
	 * @since	0.2.0
	 */
	public static function setContextMenu(menu:Menu):String;

	/**
	 * Set the dock icon
	 * @param	icon	path to the icon
	 * @return	String
	 * @since	0.2.0
	 */
	public static function setDockIcon(icon:String):String;

	/**
	 * Set the dock menu
	 * @param	menu	The new menu for the dock or null to unset the menu.
	 * @return	String
	 * @since	0.2.0
	 */
	public static function setDockMenu(menu:Menu):String;

	/**
	 * Set the application's icon
	 * @param	menu	path to the icon
	 * @return	String
	 * @since	0.2.0
	 */
	public static function setIcon(menu:String):String;

	/**
	 * Set a menu for the application
	 * @param	menu	A Menu object to use as the menu or null to unset the menu.
	 * @return	String
	 * @since	0.2.0
	 */
	public static function setMenu(menu:Menu):String;

	/**
	 * create a UI dialog
	 * @param	params	options to pass in to create window
	 * @return	Dialog
	 * @since	0.4.0
	 */
	public static function showDialog(params:Dynamic):Dialog;
}