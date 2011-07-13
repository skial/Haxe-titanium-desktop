/**
 * ...
 * @author Skial Bainn
 */

package com.appcelerator.titanium.desktop;

import com.appcelerator.titanium.desktop.TDApi;
import com.appcelerator.titanium.desktop.TDApp;

@:native('Titanium')
extern class Titanium {
	
	// SUB-MODULES
	
	/**
	 * A module for holding core Titanium functionality.
	 */
	public static var API = new TDApi();
	
	/**
	 * The Titanium Analytics module used for recording analytics events.
	 */
	public static var Analytics = new TDAnalytics();
	
	/**
	 * A module for holding currently running application specific functionality.
	 */
	public static var App = new TDApp();
	
	/**
	 * A module for dealing with encoding and decoding.
	 */
	public static var Codec = new TDCodec();
	
	/**
	 * A module for dealing with Database storage.
	 */
	public static var Database = new TDDatabase();
	
	/**
	 * A module dealing with Desktop specific functionality.
	 */
	public static var Desktop = new TDDesktop();
	
	/**
	 * A module for accessing the Filesystem.
	 */
	public static var Filesystem = new TDFilesystem();
	
	/**
	 * A module for serializing and deserializing JSON.
	 */
	public static var JSON = new TDJSON();
	
	/**
	 * A module for dealing with media.
	 */
	public static var Media = new TDMedia();
	
	/**
	 * A module for network functionality.
	 */
	public static var Network = new TDNetwork();
	
	/**
	 * A module for displaying desktop notifications.
	 */
	public static var Notification = new TDNotification();
	
	/**
	 * A module for exposing platform-specific functionality.
	 */
	public static var Platform = new TDPlatform();
	
	/**
	 * A module for creating processes.
	 */
	public static var Process = new TDProcess();
	
	/**
	 * A module for controlling the user interface.
	 */
	public static var UI = new TDUI();
	
	/**
	 * A module for dealing with application and component updates.
	 */
	public static var UpdateManager = new TDUpdateManager();
	
	/**
	 * A module for creating Worker threads.
	 */
	public static var Worker = new TDWorker();
	
	// OBJECTS
	
	/**
	 * An object for holding arrays of bytes.
	 */
	public static var Blob = new TDBlob();
	
	// FUNCTIONS
	
	/**
	 * Return the current platform, usually one of 'osx', 'win32', or 'linux'.
	 * @return
	 */
	public static function getPlatform():String;
	
	/**
	 * Return the Titanium runtime version.
	 * @return
	 */
	public static function getVersion():String;
	
	// PROPERTIES
	
	/**
	 * The ALL event constant. This can be used for listening for all events.
	 */
	public static var ALL:String;
	
	/**
	 * The APP_EXIT event constant, fired during host application exit.
	 */
	public static var APP_EXIT:String;
	
	/**
	 * The CLOSE event constant
	 */
	public static var CLOSE:String;
	
	/**
	 * The CLOSED event constant
	 */
	public static var CLOSED:String;
	
	/**
	 * The CREATE event constant
	 */
	public static var CREATE:String;
	
	/**
	 * The EXIT event constant
	 */
	public static var EXIT:String;
	
	/**
	 * The FOCUSED event constant
	 */
	public static var FOCUSED:String;
	
	/**
	 * The FULLSCREENED event constant
	 */
	public static var FULLSCREENED:String;
	
	/**
	 * The HIDDEN event constant
	 */
	public static var HIDDEN:String;
	
	/**
	 * The HTTP request aborted event constant.
	 */
	public static var HTTP_ABORT:String;
	
	/**
	 * The HTTP data received event constant.
	 */
	public static var HTTP_DATA_REEIVED:String;
	
	/**
	 * The HTTP data sent event constant.
	 */
	public static var HTTP_DATA_SENT:String;
	
	/**
	 * The HTTP request complete event constant.
	 */
	public static var HTTP_DONE:String;
	
	/**
	 * The HTTP redirect event constant.
	 */
	public static var HTTP_REDIRECT:String;
	
	/**
	 * The HTTP state changed event constant.
	 */
	public static var HTTP_STATE_CHANGED:String;
	
	/**
	 * The HTTP request timeout event constant.
	 */
	public static var HTTP_TIMEOUT:String;
	
	/**
	 * The MAXIMIZED event constant
	 */
	public static var MAXIMIZED:String;
	
	/**
	 * The MINIMIZED event constant
	 */
	public static var MINIMIZED:String;
	
	/**
	 * The MOVED event constant
	 */
	public static var MOVED:String;
	
	/**
	 * The OPEN event constant
	 */
	public static var OPEN:String;
	
	/**
	 * The OPENED event constant
	 */
	public static var OPENED:String;
	
	/**
	 * The OPEN request event constant.
	 */
	public static var OPEN_REQUEST:String;
	
	/**
	 * The PAGE_INITIALIZED event constant
	 */
	public static var PAGE_INITIALIZED:String;
	
	/**
	 * The PAGE_LOADED event constant
	 */
	public static var PAGE_LOADED:String;
	
	/**
	 * The READ event constant
	 */
	public static var READ:String;
	
	/**
	 * The RESIZED event constant
	 */
	public static var RESIZED:String;
	
	/**
	 * The SHOWN event constant
	 */
	public static var SHOWN:String;
	
	/**
	 * The UNFOCUSED event constant
	 */
	public static var UNFOCUSED:String;
	
	/**
	 * The UNFULLSCREENED event constant
	 */
	public static var UNFULLSCREENED:String;
	
}