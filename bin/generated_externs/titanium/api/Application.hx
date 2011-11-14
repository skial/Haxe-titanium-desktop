package titanium.api;
import titanium.api.Component;
import titanium.api.Dependency;
/**
 * An object representing a Titanium application, either the currently running
application or one on disk.
 * @since	0.4.0
 */
@:native("Titanium.API.Application")
extern class Application {

	/**
	 * Retrieve a list of command-line arguments passed to this application. This
	 * list will include the first argument, which is the path to the executable.
	 * @return	Array<String>
	 * @since	0.4.0
	 */
	public static function getArguments():Array<String>;

	/**
	 * Find the value for a given argument. You may either pass 
	 * 'param' or '--param' and this method will find the command-line
	 * value for '--param=<value>'.
	 * @param	argument	The name of the argument to find the value for.
	 * @return	String
	 * @since	0.4.0
	 */
	public static function getArgumentValue(argument:String):String;

	/**
	 * Return a list of all available (installed and bundled) components
	 * for this application. This is simply the list returned by
	 * API.getInstalledComponents() plus any components bundled with the
	 * application. Note that bundled components do not have a version
	 * currently.
	 * @return	Array<Component>
	 * @since	0.4.0
	 */
	public static function getAvailableComponents():Array<Component>;

	/**
	 * Return a list of all available (installed and bundled) modules
	 * for this application. This is simply the list returned by
	 * API.getInstalledModules() plus any components bundled with the
	 * application. Note that bundled components do not have a version
	 * currently.
	 * @return	Array<Component>
	 * @since	0.4.0
	 */
	public static function getAvailableModules():Array<Component>;

	/**
	 * Return a list of all available (installed and bundled) runtimes
	 * for this application. This is simply the list returned by
	 * API.getInstalledModules() plus any components bundled with the
	 * application. Note that bundled components do not have a version
	 * currently.
	 * @return	Array<Component>
	 * @since	0.4.0
	 */
	public static function getAvailableRuntimes():Array<Component>;

	/**
	 * Return a list of all bundled components for this for this application.
	 * Bundled components currently live inside the application contents directory
	 * in the following directories:
	 * <ul>
	 *     <li>My App.app/Contents/modules</li>
	 *     <li>My App.app/Contents/runtime</li>
	 *     <li>My App.app/Contents/sdk</li>
	 *     <li>My App.app/Contents/mobilesdk</li>
	 * </ul>
	 * @return	Array<Component>
	 * @since	0.4.0
	 */
	public static function getBundledComponents():Array<Component>;

	/**
	 * Return a list of all modules bundled with this application
	 * @return	Array<Component>
	 * @since	0.4.0
	 */
	public static function getBundledModules():Array<Component>;

	/**
	 * Return a list of all bundled runtimes for this for this application.
	 * A bundled runtime currently live inside the application contents directory
	 * in the "My App.app/Contents/runtime" directory.
	 * @return	Array<Component>
	 * @since	0.4.0
	 */
	public static function getBundledRuntimes():Array<Component>;

	/**
	 * Return a list of all resolved components for this for this application.
	 * Resolved components may either be installed or bundled components.
	 * Note that currently bundled components returned in this list do not have
	 * a version.
	 * @return	Array<Component>
	 * @since	0.4.0
	 */
	public static function getComponents():Array<Component>;

	/**
	 * Get the path to the application's user data directory. This path is
	 * guaranteed to be writable (as opposed to the application directory
	 * which should not be written to) and is suitable for storing any
	 * application files.
	 * @return	String
	 * @since	0.4.0
	 */
	public static function getDataPath():String;

	/**
	 * Get a list of this application's dependencies. Dependencies
	 * are defined in the application manifest file.
	 * @return	Array<Dependency>
	 * @since	0.4.0
	 */
	public static function getDependencies():Array<Dependency>;

	/**
	 * Get the path to this application's executable.
	 * @return	String
	 * @since	0.4.0
	 */
	public static function getExecutablePath():String;

	/**
	 * Get this application globally unique identifier. This is
	 * currently defined in the application manifest.
	 * @return	String
	 * @since	0.4.0
	 */
	public static function getGUID():String;

	/**
	 * Get this human readable id currently defined in both the
	 * application manifest and the application's tiapp.xml file.
	 * @return	String
	 * @since	0.4.0
	 */
	public static function getID():String;

	/**
	 * Get the contents of this application's manifest as an array
	 * of string pairs (array of size 2). Each entry in the manifest
	 * is a simple key-value pair. Comments are ignored.
	 * @return	Array<Array<String>>
	 * @since	0.4.0
	 */
	public static function getManifest():Array<Array<String>>;

	/**
	 * Get the path to this application's manifest
	 * @return	String
	 * @since	0.4.0
	 */
	public static function getManifestPath():String;

	/**
	 * Return a list of all resolved modules for this for this application.
	 * Resolved components may either be installed or bundled components.
	 * Note that currently bundled components returned in this list do not have
	 * a version.
	 * @return	Array<Component>
	 * @since	0.4.0
	 */
	public static function getModules():Array<Component>;

	/**
	 * Get this application's name.
	 * @return	String
	 * @since	0.4.0
	 */
	public static function getName():String;

	/**
	 * Get this application's path. Note that this is the top-level path of
	 * application, not the path to the application contents directory. On
	 * OS X currently, the application contents directory is "[app path]/Contents"
	 * @return	String
	 * @since	0.4.0
	 */
	public static function getPath():String;

	/**
	 * Retrieve the process identifier of this application
	 * @return	Float
	 * @since	0.4.0
	 */
	public static function getPID():Float;

	/**
	 * Return the path to this application's resources directory. This directory
	 * is the 'Resources' subdirectory of the application contents directory.
	 * @return	String
	 * @since	0.4.0
	 */
	public static function getResourcesPath():String;

	/**
	 * Return the resolved runtime for this for this application.
	 * Resolved components may either be installed or bundled components.
	 * Note that currently bundled components returned from this method
	 * do not have a version.
	 * @return	Component
	 * @since	0.4.0
	 */
	public static function getRuntime():Component;

	/**
	 * Get this application's version.
	 * @return	String
	 * @since	0.4.0
	 */
	public static function getVersion():String;

	/**
	 * Determine if the given argument is in the argument list.
	 * You may either pass 'param' or '--param' and this method will
	 * find the command-line argument.
	 * @param	argument	The name of the argument to search for.
	 * @return	Bool
	 * @since	0.4.0
	 */
	public static function hasArgument(argument:String):Bool;

	/**
	 * Returns whether or not this is the currently running application.
	 * @return	Bool
	 * @since	0.4.0
	 */
	public static function isCurrent():Bool;

	/**
	 * Attempt to resolve all the dependencies for this application. Resolved components
	 * should be accessible through API.Application.getComponents afterward. Note that
	 * the currently running applicaiton should already have all of its dependencies resolved.
	 * @return	Array<Dependency>
	 * @since	0.4.0
	 */
	public static function resolveDependencies():Array<Dependency>;
}