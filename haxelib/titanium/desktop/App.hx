package titanium.desktop;
import titanium.desktop.app.Properties;
/**
 * A module for holding currently running application specific functionality.
 * @since	0.2.0
 */
@:native("Titanium.App")
extern class App {

	/**
	 * Convert the given app URL to a filesystem path. App URLs generally have
	 * the form 'app://subdir/resource.html' and resolve to a fileystem path
	 * rooted in the application resources directory.
	 * @return	String
	 * @since	0.2.0
	 * @example	<pre><code>
		    var path = Titanium.Filesystem.getFile(
		        Titanium.App.appURLToPath("app://index.html"));
		    var path2 = Titanium.Filesystem.getFile(
		        Titanium.App.getHome(), "Resources", "index.html")
		    // At this point path and path2 should refer to the same file.
		</code></pre>
		
	 */
	public static function appURLToPath():String;

	/**
	 * Create a new App.Properties object.
	 * @param	properties	(optional) Initial properties for the new App.Properties object.
	 * @return	titanium.desktop.app.Properties
	 * @since	0.6.0
	 * @example	<pre><code>
		    var properties = Titanium.App.createProperties({
		        'name': 'McDuck',
		        'position': 'Fisherman',
		        'age': 3
		    });
		</code></pre>
		
	 */
	public static function createProperties(?properties:Dynamic):titanium.desktop.app.Properties;

	/**
	 * Cause the application to exit after firing the Titanium.EXIT
	 * event. The application isn't gauaranteed to exit when this
	 * method is called, because an event handler may cancel the
	 * EXIT event by calling preventDefault or stopPropagation on it.
	 * @return	Void
	 * @since	0.2.0
	 */
	public static function exit():Void;

	/**
	 * Return the command-line arguments passed to this application,
	 * excluding the first which is the path to the application executable.
	 * @return	Array<String>
	 * @since	0.8.0
	 * @example	<pre><code>
		    var args = Titanium.App.getArguments();
		    for (var i = 0; i < args.length; i++)
		    {
		        alert(args[i]);
		    }
		</code></pre>
		
	 */
	public static function getArguments():Array<String>;

	/**
	 * Return the application's copyright information, defined in the tiapp.xml file.
	 * @return	String
	 * @since	0.4.0
	 * @example	<pre><code>
		    document.write("The application copyright is: " +
		        Titanium.App.getCopyright());
		</code></pre>
		
	 */
	public static function getCopyright():String;

	/**
	 * Return the application's description, defined in the tiapp.xml file.
	 * @return	String
	 * @since	0.4.0
	 * @example	<pre><code>
		    document.write(Titanium.App.getDescription());
		</code></pre>
		
	 */
	public static function getDescription():String;

	/**
	 * Return the application's GUID, defined in the application manifest.
	 * @return	String
	 * @since	0.2.0
	 */
	public static function getGUID():String;

	/**
	 * Return the full path to the application home directory. The application
	 * home or contents directory is the subdirectory within the application which
	 * contains the application Resources directory and bundled components. On OS X
	 * this is the directory "My App.app/Contents" and on Windows and Linux it is
	 * simply the path to the application.
	 * @return	String
	 * @since	0.8.0
	 */
	public static function getHome():String;

	/**
	 * Return the full path to the application icon. The application icon path
	 * is specified in the application manifest and tiapp.xml relative to the
	 * application Resources directory.
	 * @return	String
	 * @since	0.4.0
	 */
	public static function getIcon():String;

	/**
	 * Get this human readable id defined in both the
	 * application manifest and the application's tiapp.xml file.
	 * @return	String
	 * @since	0.2.0
	 */
	public static function getID():String;

	/**
	 * Return the application name.
	 * @return	String
	 * @since	0.2.0
	 */
	public static function getName():String;

	/**
	 * Return the full path to the application executable.
	 * @return	String
	 * @since	0.8.0
	 */
	public static function getPath():String;

	/**
	 * Return the application publisher information specifiedi in the tiapp.xml file.
	 * @return	String
	 * @since	0.4.0
	 */
	public static function getPublisher():String;

	/**
	 * Return the stream URL for the application's updates.
	 * @param	...	Any number of String arguments which will be appended as path components of the stream URL.
	 * @return	String
	 * @since	0.4.0
	 */
	public static function getStreamURL(arg:String):String;

	/**
	 * Get the system properties defined in tiapp.xml (see App.Properties).
	 * @return	titanium.desktop.app.Properties
	 * @since	0.4.0
	 */
	public static function getSystemProperties():titanium.desktop.app.Properties;

	/**
	 * Return the application URL definedin the tiapp.xml file.
	 * @return	String
	 * @since	0.4.0
	 */
	public static function getURL():String;

	/**
	 * Return the application version defined in the tiapp.xml file.
	 * @return	String
	 * @since	0.2.0
	 */
	public static function getVersion():String;

	/**
	 * Loads a properties list from a file path.
	 * @param	path	Path to a properties file.
	 * @return	Array<Properties>
	 * @since	0.2.0
	 */
	public static function loadProperties(path:String):Array<Properties>;

	/**
	 * Exit the application and restart it.
	 * @return	String
	 * @since	0.9.0
	 */
	public static function restart():String;

	/**
	 * Print a raw string to stderr without a trailing newline.
	 * @return	String
	 * @since	0.4.0
	 */
	public static function stderr():String;

	/**
	 * Reads from stdin
	 * @param	prompt	(optional) Text prompt for input. If not specified, no prompt will appear.
	 * @param	delimiter	(optional) Will continue reading stdin until the delimiter character is reached. If no argument is specified, this method will continue reading until a newline.
	 * @return	String
	 * @since	0.7.0
	 */
	public static function stdin(?prompt:String, ?delimiter:String):String;

	/**
	 * Print a String to stdout including a trailing newline.
	 * @param	data	The data to print. If not a String
	 * @return	Void
	 * @since	0.4.0
	 */
	public static function stdout(data:Dynamic):Void;
}