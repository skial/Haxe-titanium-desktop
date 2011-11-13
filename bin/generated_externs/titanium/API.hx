package titanium;
import titanium.api.Environment;
import titanium.api.Component;
import titanium.api.Dependency;
import titanium.api.Application;
/**
 * A module for holding core Titanium functionality.
 * @since	0.2.0
 */
@:native("Titanium.API")
extern class API {

	/**
	 * A constant representing an application update component type.
	 * @since	0.4.0
	 */
	public static var APP_UPDATE:Float;

	/**
	 * A constant representing CRITICAL logger severity.
	The severity levels in order from least severe to most severe are:
	<ol>
	    <li>TRACE</li>
	    <li>DEBUG</li>
	    <li>INFO</li>
	    <li>NOTICE</li>
	    <li>WARN</li>
	    <li>ERROR</li>
	    <li>CRITICAL</li>
	    <li>FATAL</li>
	</ol>
	 * @since	0.4.0
	 */
	public static var CRITICAL:Float;

	/**
	 * A constant representing DEBUG logger severity.
	The severity levels in order from least severe to most severe are:
	<ol>
	    <li>TRACE</li>
	    <li>DEBUG</li>
	    <li>INFO</li>
	    <li>NOTICE</li>
	    <li>WARN</li>
	    <li>ERROR</li>
	    <li>CRITICAL</li>
	    <li>FATAL</li>
	</ol>
	 * @since	0.4.0
	 */
	public static var DEBUG:Float;

	/**
	 * A constant representing an equality dependency.
	This is used to specify resolutions to Titanium application dependencies.
	 * @since	0.4.0
	 */
	public static var EQ:Float;

	/**
	 * A constant representing ERROR logger severity.
	The severity levels in order from least severe to most severe are:
	<ol>
	    <li>TRACE</li>
	    <li>DEBUG</li>
	    <li>INFO</li>
	    <li>NOTICE</li>
	    <li>WARN</li>
	    <li>ERROR</li>
	    <li>CRITICAL</li>
	    <li>FATAL</li>
	</ol>
	 * @since	0.4.0
	 */
	public static var ERROR:Float;

	/**
	 * A constant representing FATAL logger severity.
	The severity levels in order from least severe to most severe are:
	<ol>
	    <li>TRACE</li>
	    <li>DEBUG</li>
	    <li>INFO</li>
	    <li>NOTICE</li>
	    <li>WARN</li>
	    <li>ERROR</li>
	    <li>CRITICAL</li>
	    <li>FATAL</li>
	</ol>
	 * @since	0.4.0
	 */
	public static var FATAL:Float;

	/**
	 * A constant representing an greater-than dependency. 
	This is used to specify resolutions to Titanium application dependencies.
	 * @since	0.4.0
	 */
	public static var GT:Float;

	/**
	 * A constant representing an greater-than-or-equal-to dependency. 
	This is used to specify resolutions to Titanium application dependencies.
	 * @since	0.4.0
	 */
	public static var GTE:Float;

	/**
	 * A constant representing INFO logger severity.
	The severity levels in order from least severe to most severe are:
	<ol>
	    <li>TRACE</li>
	    <li>DEBUG</li>
	    <li>INFO</li>
	    <li>NOTICE</li>
	    <li>WARN</li>
	    <li>ERROR</li>
	    <li>CRITICAL</li>
	    <li>FATAL</li>
	</ol>
	 * @since	0.4.0
	 */
	public static var INFO:Float;

	/**
	 * A constant representing an less-than dependency.
	This is used to specify resolutions to Titanium application dependencies.
	 * @since	0.4.0
	 */
	public static var LT:Float;

	/**
	 * A constant representing an less-than-or-equal-to dependency.
	This is used to specify resolutions to Titanium application dependencies.
	 * @since	0.4.0
	 */
	public static var LTE:Float;

	/**
	 * a constant representing a Mobile SDK component type.
	 * @since	0.4.0
	 */
	public static var MOBILESDK:Float;

	/**
	 * A constant representing a module component type.
	 * @since	0.4.0
	 */
	public static var MODULE:Float;

	/**
	 * A constant representing NOTICE logger severity.
	The severity levels in order from least severe to most severe are:
	<ol>
	    <li>TRACE</li>
	    <li>DEBUG</li>
	    <li>INFO</li>
	    <li>NOTICE</li>
	    <li>WARN</li>
	    <li>ERROR</li>
	    <li>CRITICAL</li>
	    <li>FATAL</li>
	</ol>
	 * @since	0.4.0
	 */
	public static var NOTICE:Float;

	/**
	 * A constant representing a runtime component type.
	 * @since	0.4.0
	 */
	public static var RUNTIME:Float;

	/**
	 * a constant representing an SDK component type.
	 * @since	0.4.0
	 */
	public static var SDK:Float;

	/**
	 * A constant representing TRACE logger severity.
	The severity levels in order from least severe to most severe are:
	<ol>
	    <li>TRACE</li>
	    <li>DEBUG</li>
	    <li>INFO</li>
	    <li>NOTICE</li>
	    <li>WARN</li>
	    <li>ERROR</li>
	    <li>CRITICAL</li>
	    <li>FATAL</li>
	</ol>
	 * @since	0.4.0
	 */
	public static var TRACE:Float;

	/**
	 * a constant representing an UNKNOWN component type.
	 * @since	0.4.0
	 */
	public static var UNKNOWN:Float;

	/**
	 * A constant representing WARN logger severity.
	The severity levels in order from least severe to most severe are:
	<ol>
	    <li>TRACE</li>
	    <li>DEBUG</li>
	    <li>INFO</li>
	    <li>NOTICE</li>
	    <li>WARN</li>
	    <li>ERROR</li>
	    <li>CRITICAL</li>
	    <li>FATAL</li>
	</ol>
	 * @since	0.4.0
	 */
	public static var WARN:Float;
	public function new():Void;

	/**
	 * Register a root event listener. Event listeners registered using this
	 * function will receive <em>all</em> events from Titanium.
	 * @param	eventName	The event name to listen for.
	 * @param	callback	The callback to invoke when this message occurs.
	 * @return	Float
	 * @since	0.5.0
	 * @example	<pre><code>
		    Titanium.API.addEventListener(Titanium.PAGE_INITIALIZED, function(event)
		    {
		            alert("Got page initialized event!");
		    });
		</code></pre>
		
	 */
	public var addEventListener:String->Dynamic->Float;

	/**
	 * Create a Kroll Bytes object given a String. A Bytes object is a generic
	 * way of holding a String of bytes.
	 * @param	contents	(optional) The contents of the new Bytes. The String will be converted to a
	 * UTF-8 String before populating the Bytes object. If no String is given the
	 * object will be empty.
	 * 
	 * @return	Bytes
	 * @since	0.9.0
	 */
	public function createBytes(contents:String):Bytes;

	/**
	 * A constructor for API.Dependency objects.
	 * @param	type	The type of this dependency. This is usually one of the component type constants (e.g. API.MODULE).
	 * @param	name	The name of this dependency.
	 * @param	version	The version requirement for this dependency.
	 * @param	requirement	(optional) The requirement for this dependency. This is one of the requirement specification constants from the API module such as API.LT (less-than)]
	 * @return	Dependency
	 * @since	0.4.0
	 */
	public function createDependency(type:Float, name:String, version:String, requirement:Float):Dependency;

	/**
	 * Create a Kroll list given an optional JavaScript array. This method is mainly used for testing.
	 * @param	toWrap	(optional) An Array to wrap in a new KList.
	 * @return	Array
	 * @since	0.5.0
	 */
	public function createKList(toWrap:Array):Array;

	/**
	 * Create a Kroll method given an existing JavaScript Funtion. This method is mainly used for testing.
	 * @param	toWrap	(optional) A Function to wrap in a new KMethod.
	 * @return	Dynamic
	 * @since	0.5.0
	 */
	public function createKMethod(toWrap:Dynamic):Dynamic;

	/**
	 * Create a Kroll object given an existing JavaScript Object. This method is mainly used for testing.
	 * @param	toWrap	(optional) An Object to wrap in a new KObject.
	 * @return	Dynamic
	 * @since	0.5.0
	 */
	public function createKObject(toWrap:Dynamic):Dynamic;

	/**
	 * Log a statement with CRITICAL severity.
	 * The severity levels in order from least severe to most severe are:
	 * <ol>
	 *     <li>TRACE</li>
	 *     <li>DEBUG</li>
	 *     <li>INFO</li>
	 *     <li>NOTICE</li>
	 *     <li>WARN</li>
	 *     <li>ERROR</li>
	 *     <li>CRITICAL</li>
	 *     <li>FATAL</li>
	 * </ol>
	 * @param	statement	The String to send to the logger.
	 * @return	Void
	 * @since	0.4.0
	 */
	public function critical(statement:String):Void;

	/**
	 * Log a statement with DEBUG severity. The severity levels in order from
	 * least severe to most severe are:
	 * <ol>
	 *     <li>TRACE</li>
	 *     <li>DEBUG</li>
	 *     <li>INFO</li>
	 *     <li>NOTICE</li>
	 *     <li>WARN</li>
	 *     <li>ERROR</li>
	 *     <li>CRITICAL</li>
	 *     <li>FATAL</li>
	 * </ol>
	 * @param	statement	The String to send to the logger.
	 * @return	Void
	 * @since	0.4.0
	 * @example	<pre><code>
		    Titanium.API.debug("This is a debug message");
		</code></pre>
		
	 */
	public function debug(statement:String):Void;

	/**
	 * Log a statement with ERROR severity.
	 * The severity levels in order from least severe to most severe are:
	 * <ol>
	 *     <li>TRACE</li>
	 *     <li>DEBUG</li>
	 *     <li>INFO</li>
	 *     <li>NOTICE</li>
	 *     <li>WARN</li>
	 *     <li>ERROR</li>
	 *     <li>CRITICAL</li>
	 *     <li>FATAL</li>
	 * </ol>
	 * @param	statement	The String to send to the logger.
	 * @return	Void
	 * @since	0.4.0
	 */
	public function error(statement:String):Void;

	/**
	 * Log a statement with FATAL severity.
	 * The severity levels in order from least severe to most severe are:
	 * <ol>
	 *     <li>TRACE</li>
	 *     <li>DEBUG</li>
	 *     <li>INFO</li>
	 *     <li>NOTICE</li>
	 *     <li>WARN</li>
	 *     <li>ERROR</li>
	 *     <li>CRITICAL</li>
	 *     <li>FATAL</li>
	 * </ol>
	 * @param	statement	The String to send to the logger.
	 * @return	Void
	 * @since	0.4.0
	 */
	public function fatal(statement:String):Void;

	/**
	 * Fire an event to the top-level event listener.
	 * @param	event	The name of the event to fire or the event object itself
	 * @return	Void
	 * @since	0.5.0
	 */
	@:overload(public function fireEvent(event:String):Void{})
	public function fireEvent(event:Dynamic):Void;

	/**
	 * Get an attribute in the global object
	 * @param	key	Key of the attribute to get
	 * @return	Dynamic
	 * @since	0.2.0
	 */
	public function get(key:String):Dynamic;

	/**
	 * Get the currently running application. This application will
	 * should have all of its dependencies resolved.
	 * @return	Application
	 * @since	0.2.0
	 */
	public function getApplication():Application;

	/**
	 * Get a list of the paths on which Titanium searches for installed components. This does not include paths of bundled components.
	 * @return	Array<Component>
	 * @since	0.4.0
	 */
	public function getComponentSearchPaths():Array<Component>;

	/**
	 * Get the system environment object, which can be queried and updated
	 * just by accessing or setting its properties.
	 * @return	Environment
	 * @since	0.5.0
	 * @example	<pre><code>
		    var environment = Titanium.API.getEnvironment();
		    if (environment['PATH'] !== undefined)
		    {
		        environment['PATH'] += ":/opt/local/bin";
		    }
		</code></pre>
		
	 */
	public function getEnvironment():Environment;

	/**
	 * Get a list of the currently installed Titanium components.
	 * An installed component is one that has been found on the list of paths
	 * returned by Titanium.API.getComponentSearchPaths. This list does not
	 * include bundled components.
	 * @return	Array<Component>
	 * @since	0.4.0
	 */
	public function getInstalledComponents():Array<Component>;

	/**
	 * Get a list of the currently installed Titanium Mobile SDK components.
	 * An installed component is one that has been found on the list of paths
	 * returned by Titanium.API.getComponentSearchPaths. This list does not
	 * include bundled components.
	 * @return	Array<Component>
	 * @since	0.4.0
	 */
	public function getInstalledMobileSDKs():Array<Component>;

	/**
	 * Get a list of the currently installed Titanium module components.
	 * An installed component is one that has been found on the list of paths
	 * returned by Titanium.API.getComponentSearchPaths. This list does not
	 * include bundled components.
	 * @return	Array<Component>
	 * @since	0.4.0
	 */
	public function getInstalledModules():Array<Component>;

	/**
	 * Get a list of the currently installed Titanium runtime components.
	 * An installed component is one that has been found on the list of paths
	 * returned by Titanium.API.getComponentSearchPaths. This list does not
	 * include bundled components.
	 * @return	Array<Component>
	 * @since	0.4.0
	 */
	public function getInstalledRuntimes():Array<Component>;

	/**
	 * Get a list of the currently installed Titanium SDK components.
	 * An installed component is one that has been found on the list of paths
	 * returned by Titanium.API.getComponentSearchPaths. This list does not
	 * include bundled components.
	 * @return	Array<Component>
	 * @since	0.4.0
	 */
	public function getInstalledSDKs():Array<Component>;

	/**
	 * Get the log level threshold of the Titanium logger. The logger
	 * will log statements with this severity or one that is more severe.
	 * The severity levels in order from least severe to most severe are:
	 * <ol>
	 *     <li>TRACE</li>
	 *     <li>DEBUG</li>
	 *     <li>INFO</li>
	 *     <li>NOTICE</li>
	 *     <li>WARN</li>
	 *     <li>ERROR</li>
	 *     <li>CRITICAL</li>
	 *     <li>FATAL</li>
	 * </ol>
	 * @return	Float
	 * @since	0.5.0
	 */
	public function getLogLevel():Float;

	/**
	 * Log a statement with INFO severity. The severity levels in order from
	 * least severe to most severe are:
	 * <ol>
	 *     <li>TRACE</li>
	 *     <li>DEBUG</li>
	 *     <li>INFO</li>
	 *     <li>NOTICE</li>
	 *     <li>WARN</li>
	 *     <li>ERROR</li>
	 *     <li>CRITICAL</li>
	 *     <li>FATAL</li>
	 * </ol>
	 * @param	statement	The String to send to the logger.
	 * @return	Void
	 * @since	0.4.0
	 */
	public function info(statement:String):Void;

	/**
	 * Invoke the installer to find and install a list of dependencies. When
	 * the installer is finished running, it will call the given callback.
	 * The only way to determine whether or not the installation was successful
	 * at this point is to try to resolve the dependencies that were passed
	 * to the installer. <em>Currently the installer only supports Titanium.API.EQ
	 * dependencies.</em>
	 * @param	dependencies	A list of API.Dependency to find and install.
	 * @param	callback	A callback to invoke when the installer is finished.
	 * @return	Void
	 * @since	0.4.0
	 */
	public var installDependencies:Array<Dependency>->Dynamic->Void;

	/**
	 * Log a statement with a given severity level. The severity levels are
	 * defined as constants on the API module. 
	 * In order from least severe to most severe, they are:
	 * <ol>
	 *     <li>TRACE</li>
	 *     <li>DEBUG</li>
	 *     <li>INFO</li>
	 *     <li>WARN</li>
	 *     <li>ERROR</li>
	 *     <li>CRITICAL</li>
	 *     <li>FATAL</li>
	 * </ol>
	 * @param	type	The severity of this log statement.
	 * @param	statement	The String to pass to the logger.
	 * @return	Void
	 * @since	0.2.0
	 */
	public function log(type:Float, statement:String):Void;

	/**
	 * Log a statement with NOTICE severity. The severity levels in order from
	 * least severe to most severe are:
	 * <ol>
	 *     <li>TRACE</li>
	 *     <li>DEBUG</li>
	 *     <li>INFO</li>
	 *     <li>NOTICE</li>
	 *     <li>WARN</li>
	 *     <li>ERROR</li>
	 *     <li>CRITICAL</li>
	 *     <li>FATAL</li>
	 * </ol>
	 * @param	statement	the statement to log
	 * @return	Void
	 * @since	0.4.0
	 */
	public function notice(statement:String):Void;

	/**
	 * Print a String to stdout without a trailing newline
	 * @param	data	The data to print. If not a String
	 * @return	Void
	 * @since	0.6.0
	 */
	public function print(data:Dynamic):Void;

	/**
	 * Read an application manifest at a given path and return an
	 * Titanium.API.Application object representing the application.
	 * @param	manifestPath	The path to the manifest to read.
	 * @param	applicationPath	(optional) An optional application path override
	 * @return	Application
	 * @since	0.4.0
	 */
	public function readApplicationManifest(manifestPath:String, applicationPath:String):Application;

	/**
	 * Remove a root event listener. If no listener with the given id or
	 * funtion is registered for this object, the call will do nothing.
	 * @param	id	The id or the Function of the event listener to remove.
	 * @return	Void
	 * @since	0.5.0
	 */
	@:overload(public function removeEventListener(id:Float):Void{})
	public function removeEventListener(id:Dynamic):Void;

	/**
	 * Execute the method asynchronously on the main thread. This should be
	 * used when attempting to run JavaScript methods from non-JavaScript threads.
	 * This method blocks until the function finishes executing and returns
	 * the return value of the method passed.
	 * @param	method	The method to execute.
	 * @param	...	A variable-length list of arguments to pass to the method.
	 * @return	Dynamic
	 * @since	0.5.0
	 */
	public function runOnMainThread(method:Dynamic, arg:Dynamic):Dynamic;

	/**
	 * Execute the method asynchronously on the main thread. This should be
	 * used when attempting to run JavaScript methods from non-JavaScript threads.
	 * This method does not wait for the method to complete and returns immediately.
	 * @param	method	The method to execute.
	 * @param	...	A variable-length list of arguments to pass to the method.
	 * @return	Void
	 * @since	0.5.0
	 */
	public function runOnMainThreadAsync(method:Dynamic, arg:Dynamic):Void;

	/**
	 * Set an attribute in the global object
	 * @param	key	Key of the attribute to set
	 * @param	value	New value of the attribute
	 * @return	Void
	 * @since	0.2.0
	 */
	public function set(key:String, value:String):Void;

	/**
	 * Set the log level threshold of the Titanium logger. The logger
	 * will log statements with this severity or one that is more severe.
	 * The severity levels in order from least severe to most severe are:
	 * <ol>
	 *     <li>TRACE</li>
	 *     <li>DEBUG</li>
	 *     <li>INFO</li>
	 *     <li>NOTICE</li>
	 *     <li>WARN</li>
	 *     <li>ERROR</li>
	 *     <li>CRITICAL</li>
	 *     <li>FATAL</li>
	 * </ol>
	 * @param	level	The threshold of severity to log.
	 * @return	Void
	 * @since	0.5.0
	 */
	public function setLogLevel(level:Float):Void;

	/**
	 * Log a statement with TRACE severity. The severity levels in order from
	 * least severe to most severe are:
	 * <ol>
	 *     <li>TRACE</li>
	 *     <li>DEBUG</li>
	 *     <li>INFO</li>
	 *     <li>NOTICE</li>
	 *     <li>WARN</li>
	 *     <li>ERROR</li>
	 *     <li>CRITICAL</li>
	 *     <li>FATAL</li>
	 * </ol>
	 * @param	statement	The String to send to the logger.
	 * @return	Void
	 * @since	0.4.0
	 */
	public function trace(statement:String):Void;

	/**
	 * Log a statement with WARN severity. The severity levels in order from
	 * least severe to most severe are:
	 * <ol>
	 *     <li>TRACE</li>
	 *     <li>DEBUG</li>
	 *     <li>INFO</li>
	 *     <li>NOTICE</li>
	 *     <li>WARN</li>
	 *     <li>ERROR</li>
	 *     <li>CRITICAL</li>
	 *     <li>FATAL</li>
	 * </ol>
	 * @param	statement	The String to send to the logger.
	 * @return	Void
	 * @since	0.4.0
	 */
	public function warn(statement:String):Void;
}