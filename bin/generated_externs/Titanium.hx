package ;
/**
 * This is the top-level Titanium module, containing all Titanium APIs.
Titanium API objects generally follow the setProperty()/getProperty()
pattern, but you may also use accessors for most operations For example:

<pre><code>
    var window = Titanium.UI.currentWindow;
    window.setHeight(300); // Set the window height to 300 pixels.
    window.height = 300; // The same.
</code></pre>
 * @since	0.2.0
 * @example	null
*/
@:native("Titanium")
extern class Titanium {

	/**
	 * The ALL event constant. This can be used for listening for all events.
	 * @since	0.6.0
	*/
	public static var ALL:String;

	/**
	 * The APP_EXIT event constant, fired during host application exit.
	 * @since	0.7.0
	*/
	public static var APP_EXIT:String;

	/**
	 * The CLOSE event constant
	 * @since	0.6.0
	*/
	public static var CLOSE:String;

	/**
	 * The CLOSED event constant
	 * @since	0.6.0
	*/
	public static var CLOSED:String;

	/**
	 * The CREATE event constant
	 * @since	0.6.0
	*/
	public static var CREATE:String;

	/**
	 * The EXIT event constant
	 * @since	0.6.0
	*/
	public static var EXIT:String;

	/**
	 * The FOCUSED event constant
	 * @since	0.6.0
	*/
	public static var FOCUSED:String;

	/**
	 * The FULLSCREENED event constant
	 * @since	0.6.0
	*/
	public static var FULLSCREENED:String;

	/**
	 * The HIDDEN event constant
	 * @since	0.6.0
	*/
	public static var HIDDEN:String;

	/**
	 * The HTTP request aborted event constant.
	 * @since	0.7.0
	*/
	public static var HTTP_ABORT:String;

	/**
	 * The HTTP data received event constant.
	 * @since	0.7.0
	*/
	public static var HTTP_DATA_RECEIVED:String;

	/**
	 * The HTTP data sent event constant.
	 * @since	0.7.0
	*/
	public static var HTTP_DATA_SENT:String;

	/**
	 * The HTTP request complete event constant.
	 * @since	0.7.0
	*/
	public static var HTTP_DONE:String;

	/**
	 * The HTTP redirect event constant.
	 * @since	0.7.0
	*/
	public static var HTTP_REDIRECT:String;

	/**
	 * The HTTP state changed event constant.
	 * @since	0.7.0
	*/
	public static var HTTP_STATE_CHANGED:String;

	/**
	 * The HTTP request timeout event constant.
	 * @since	0.7.0
	*/
	public static var HTTP_TIMEOUT:String;

	/**
	 * The MAXIMIZED event constant
	 * @since	0.6.0
	*/
	public static var MAXIMIZED:String;

	/**
	 * The MINIMIZED event constant
	 * @since	0.6.0
	*/
	public static var MINIMIZED:String;

	/**
	 * The MOVED event constant
	 * @since	0.6.0
	*/
	public static var MOVED:String;

	/**
	 * The OPEN event constant
	 * @since	0.6.0
	*/
	public static var OPEN:String;

	/**
	 * The OPENED event constant
	 * @since	0.6.0
	*/
	public static var OPENED:String;

	/**
	 * The OPEN request event constant.
	 * @since	0.7.0
	*/
	public static var OPEN_REQUEST:String;

	/**
	 * The PAGE_INITIALIZED event constant
	 * @since	0.6.0
	*/
	public static var PAGE_INITIALIZED:String;

	/**
	 * The PAGE_LOADED event constant
	 * @since	0.6.0
	*/
	public static var PAGE_LOADED:String;

	/**
	 * The READ event constant
	 * @since	0.6.0
	*/
	public static var READ:String;

	/**
	 * The RESIZED event constant
	 * @since	0.6.0
	*/
	public static var RESIZED:String;

	/**
	 * The SHOWN event constant
	 * @since	0.6.0
	*/
	public static var SHOWN:String;

	/**
	 * The UNFOCUSED event constant
	 * @since	0.6.0
	*/
	public static var UNFOCUSED:String;

	/**
	 * The UNFULLSCREENED event constant
	 * @since	0.6.0
	*/
	public static var UNFULLSCREENED:String;
	public function new():Void;

	/**
	 * Return the current platform, usually one of 'osx', 'win32', or 'linux'.
	 * @return	String
	 * @since	0.8.0
	*/
	public function getPlatform():String;

	/**
	 * Return the Titanium runtime version.
	 * @return	String
	 * @since	0.8.0
	*/
	public function getVersion():String;
}