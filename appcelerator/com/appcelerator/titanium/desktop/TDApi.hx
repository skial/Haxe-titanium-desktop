/**
 * ...
 * @author Skial Bainn
 */

package com.appcelerator.titanium.desktop;

import com.appcelerator.titanium.desktop.api.TDApplication;
import com.appcelerator.titanium.desktop.api.TDComponent;
import com.appcelerator.titanium.desktop.api.TDDependency;
import com.appcelerator.titanium.desktop.api.TDScript;

@:native('Titanium.API')
extern class TDApi {
	public function new():Void {}
	
	// OBJECTS
	
	/**
	 * An object representing a Titanium application, either the currently running application
	 * or one on disk. 
	 */
	public var Application:TDApplication;
	
	/**
	 * An object representing a Titanium component, which may be either a module, runtime,
	 * SDK, Mobile SDK or application update. 
	 */
	public var Component:TDComponent;
	
	/**
	 * An object representing a Titanium application dependency.
	 */
	public var Dependency:TDDependency;
	
	/**
	 * Script object.
	 */
	public var Script:TDScript;
	
	// FUNCTIONS
	
	/**
	 * Register a root event listener. Event listeners registered using this function will receive all events from 
	 * Titanium. 
	 * 
	 * @param	eventName			-		The event name to listen for.
	 * @param	handler				-		The callback to invoke when this message occurs.
	 * @return
	 */
	public function addEventListener(eventName:String, handler:Dynamic):Float;
	
	/**
	 * Create a Kroll Blob object given a String. A Blob object is a generic way of holding a String of bytes. 
	 * 
	 * @param	?contents			-		(optional) The contents of the new Blob. The String will be converted to a UTF-8
	 * 											String before populating the Blob object. If no String is given the object will be 
	 * 											empty. 
	 * @return
	 */
	public function createBlob(?contents:String):TDBlob;
	
	/**
	 * A constructor for API.Dependency objects. 
	 * 
	 * @param	type					-		The type of this dependency. This is usually one of the component type constants (e.g. API.MODULE).
	 * @param	name					-		The name of this dependency.
	 * @param	version				-		The version requirement for this dependency.
	 * @param	?requirement		-		(optional) The requirement for this dependency. This is one of the 
	 * 											requirement specification constants from the API module such as API.LT (less-than)]
	 * @return	API.Dependency
	 */
	public function createDependency(type:Float, name:String, version:String, ?requirement:Float):TDDependency;
	
	/**
	 * Create a Kroll list given an optional JavaScript array. This method is mainly used for testing. 
	 * 
	 * @param	?toWrap				-		(optional) An Array to wrap in a new KList.
	 * @return	Array<Dynamic>
	 */
	public function createKList(?toWrap:Array<Dynamic>):Array<Dynamic>;
	
	/**
	 * Create a Kroll method given an existing JavaScript Funtion. This method is mainly used for testing. 
	 * 
	 * @param	?toWrap				-		(optional) A Function to wrap in a new KMethod.
	 * @return	Function
	 */
	public function createKMethod(?toWrap:Dynamic):Dynamic;
	
	/**
	 * Create a Kroll object given an existing JavaScript Object. This method is mainly used for testing. 
	 * 
	 * @param	?toWrap				-		(optional) An Object to wrap in a new KObject.
	 * @return	Dynamic
	 */
	public function createKObject(?toWrap:Dynamic):Dynamic;
	
	/**
	 * Log a statement with CRITICAL severity. The severity levels in order from least severe to most severe 
	 * are:
	 * 	1.	TRACE 
	 * 	2.	DEBUG
	 * 	3.	INFO 
	 * 	4.	NOTICE 
	 * 	5.	WARN
	 * 	6.	ERROR 
	 * 	7.	CRITICAL 
	 * 	8.	FATAL
	 * 
	 * @param	statement			-		The String to send to the logger.
	 */
	public function critical(statement:String):Void;
	
	/**
	 * Log a statement with DEBUG severity. The severity levels in order from least severe to most severe 
	 * are:
	 * 	1.	TRACE 
	 * 	2.	DEBUG
	 * 	3.	INFO 
	 * 	4.	NOTICE 
	 * 	5.	WARN
	 * 	6.	ERROR 
	 * 	7.	CRITICAL 
	 * 	8.	FATAL
	 * 
	 * @param	statement			-		The String to send to the logger.
	 */
	public function debug(statement:String):Void;
	
	/**
	 * Log a statement with ERROR severity. The severity levels in order from least severe to most severe 
	 * are:
	 * 	1.	TRACE 
	 * 	2.	DEBUG
	 * 	3.	INFO 
	 * 	4.	NOTICE 
	 * 	5.	WARN
	 * 	6.	ERROR 
	 * 	7.	CRITICAL 
	 * 	8.	FATAL
	 * 
	 * @param	statement			-		The String to send to the logger.
	 */
	public function error(statement:String):Void;
	
	/**
	 * Log a statement with FATAL severity. The severity levels in order from least severe to most severe 
	 * are:
	 * 	1.	TRACE 
	 * 	2.	DEBUG
	 * 	3.	INFO 
	 * 	4.	NOTICE 
	 * 	5.	WARN
	 * 	6.	ERROR 
	 * 	7.	CRITICAL 
	 * 	8.	FATAL
	 * 
	 * @param	statement			-		The String to send to the logger.
	 */
	public function fatal(statement:String):Void;
	
	/**
	 * Fire an event to the top-level event listener. 
	 * 
	 * @param	event					-		The name of the event to fire or the event object itself
	 */
	public function fireEvent(event:Dynamic):Void;
	
	/**
	 * Get an attribute in the global object 
	 * 
	 * @param	key					-		Key of the attribute to get
	 * @return	Dynamic
	 */
	public function get(key:String):Dynamic;
	
	/**
	 * Get the currently running application. This application will should have all of its dependencies resolved. 
	 * 
	 * @return	API.Application 
	 */
	public function getApplication():TDApplication;
	
	/**
	 * Get a list of the paths on which Titanium searches for installed components. This does not include paths
	 * of bundled components. 
	 * 
	 * @return	Array
	 */
	public function getComponentSearchPaths():Array<Dynamic>;
	
	/**
	 * Get the system environment object, which can be queried and updated just by accessing or setting its 
	 * properties. 
	 * 
	 * @return	API.Environment 
	 */
	public function getEnvironment():Dynamic;
	
	/**
	 * Get a list of the currently installed Titanium components. An installed component is one that has been 
	 * found on the list of paths returned by Titanium.API.getComponentSearchPaths. This list does not include
	 * bundled components. 
	 * 
	 * @return	Array
	 */
	public function getInstalledComponents():Array<Dynamic>;
	
	/**
	 * Get a list of the currently installed Titanium Mobile SDK components. An installed component is one that 
	 * has been found on the list of paths returned by Titanium.API.getComponentSearchPaths. This list does 
	 * not include bundled components. 
	 * 
	 * @return	Array
	 */
	public function getInstalledMobileSDKs():Array<Dynamic>;
	
	/**
	 * Get a list of the currently installed Titanium module components. An installed component is one that has 
	 * been found on the list of paths returned by Titanium.API.getComponentSearchPaths. This list does not 
	 * include bundled components. 
	 * 
	 * @return Array
	 */
	public function getInstalledModules():Array<Dynamic>;
	
	/**
	 * Get a list of the currently installed Titanium runtime components. An installed component is one that has
	 * been found on the list of paths returned by Titanium.API.getComponentSearchPaths. This list does not 
	 * include bundled components. 
	 * 
	 * @return	Array
	 */
	public function getInstalledRuntimes():Array<Dynamic>;
	
	/**
	 * Get a list of the currently installed Titanium SDK components. An installed component is one that has 
	 * been found on the list of paths returned by Titanium.API.getComponentSearchPaths. This list does not 
	 * include bundled components. 
	 * 
	 * @return Array
	 */
	public function getInstalledSDKs():Array<Dynamic>;
	
	/**
	 * Get the log level threshold of the Titanium logger. The logger will log statements with this severity or 
	 * one that is more severe. The severity levels in order from least severe to most severe are: 
	 * 	1.	TRACE 
	 * 	2.	DEBUG
	 * 	3.	INFO 
	 * 	4.	NOTICE 
	 * 	5.	WARN
	 * 	6.	ERROR 
	 * 	7.	CRITICAL 
	 * 	8.	FATAL
	 * 
	 * @return	Float
	 */
	public function getLogLevel():Float;
	
	/**
	 * Log a statement with INFO severity. The severity levels in order from least severe to most severe are: 
	 * 	1.	TRACE 
	 * 	2.	DEBUG
	 * 	3.	INFO 
	 * 	4.	NOTICE 
	 * 	5.	WARN
	 * 	6.	ERROR 
	 * 	7.	CRITICAL 
	 * 	8.	FATAL
	 * 
	 * @param	statement
	 */
	public function info(statement:String):Void;
	
	/**
	 * Invoke the installer to find and install a list of dependencies. When the installer is finished running, it 
	 * will call the given callback. The only way to determine whether or not the installation was successful at 
	 * this point is to try to resolve the dependencies that were passed to the installer. Currently the installer 
	 * only supports Titanium.API.EQ dependencies. 
	 * 
	 * @param	dependencies		-		A list of API.Dependency to find and install.
	 * @param	handler				-		A callback to invoke when the installer is finished.
	 */
	public function installDependencies(dependencies:Array<Dynamic>, handler:Dynamic):Void;
	
	/**
	 * Log a statement with a given severity level. The severity levels are defined as constants on the API
	 * module. In order from least severe to most severe, they are: 
	 * 	1.	TRACE 
	 * 	2.	DEBUG
	 * 	3.	INFO 
	 * 	4.	NOTICE 
	 * 	5.	WARN
	 * 	6.	ERROR 
	 * 	7.	CRITICAL 
	 * 	8.	FATAL
	 * 
	 * @param	type				-		The severity of this log statement.
	 * @param	statement		-		The String to pass to the logger.
	 */
	public function log(type:Float, statement:String):Void;
	
	/**
	 * Log a statement with NOTICE severity. The severity levels in order from least severe to most severe are:
	 * 	1.	TRACE 
	 * 	2.	DEBUG
	 * 	3.	INFO 
	 * 	4.	NOTICE 
	 * 	5.	WARN
	 * 	6.	ERROR 
	 * 	7.	CRITICAL 
	 * 	8.	FATAL
	 * 
	 * @param	statement		-		The statement to log.
	 */
	public function notice(statement:String):Void;
	
	/**
	 * Print a String to stdout without a trailing newline 
	 * 
	 * @param	data				-		The data to print. If not a String.
	 */
	public function print(data:Dynamic):Void;
	
	/**
	 * Read an application manifest at a given path and return an Titanium.API.Application object representing
	 * the application. 
	 * 
	 * @param	manifestPath	-		The path to the manifest to read.
	 * @param	?applicationPath		(optional) An optional application path override
	 * @return	API.Application 
	 */
	public function readApplicationManifest(manifestPath:String, ?applicationPath:String):TDApplication;
	
	/**
	 * Remove a root event listener. If no listener with the given id or funtion is registered for this object, the
	 * call will do nothing. 
	 * 
	 * @param	id					-		The id or the Function of the event listener to remove.
	 */
	public function removeEventListener(id:Dynamic):Void;
	
	/**
	 * Execute the method asynchronously on the main thread. This should be used when attempting to run 
	 * JavaScript methods from non-JavaScript threads. This method blocks until the function finishes 
	 * executing and returns the return value of the method passed. 
	 * 
	 * @param	method			-		The method to execute.
	 * @param	variables		-		A variable-length list of arguments to pass to the method.
	 * @return	Dynamic
	 */
	public function runOnMainThread(method:Dynamic, variables:Array<Dynamic>):Dynamic;
	
	/**
	 * Execute the method asynchronously on the main thread. This should be used when attempting to run
	 * JavaScript methods from non-JavaScript threads. This method does not wait for the method to complete
	 * and returns immediately. 
	 * 
	 * @param	method			-		The method to execute.
	 * @param	variables		-		A variable-length list of arguments to pass to the method.
	 */
	public function runOnMainThreadAsync(method:Dynamic, variables:Array<Dynamic>):Void;
	
	/**
	 * Set an attribute in the global object 
	 * 
	 * @param	key				-		Key of the attribute to set.
	 * @param	value				-		New value of the attribute.
	 */
	public function set(key:String, value:String):Void;
	
	/**
	 * Set the log level threshold of the Titanium logger. The logger will log statements with this severity or one
	 * that is more severe. The severity levels in order from least severe to most severe are: 
	 * 	1.	TRACE 
	 * 	2.	DEBUG
	 * 	3.	INFO 
	 * 	4.	NOTICE 
	 * 	5.	WARN
	 * 	6.	ERROR 
	 * 	7.	CRITICAL 
	 * 	8.	FATAL
	 * 
	 * @param	level			-		The threshold of severity to log.
	 */
	public function setLogLevel(level:Float):Void;
	
	/**
	 * Log a statement with TRACE severity. The severity levels in order from least severe to most severe are:
	 * 	1.	TRACE 
	 * 	2.	DEBUG
	 * 	3.	INFO 
	 * 	4.	NOTICE 
	 * 	5.	WARN
	 * 	6.	ERROR 
	 * 	7.	CRITICAL 
	 * 	8.	FATAL
	 * 
	 * @param	statement	-		The String to send to the logger.
	 */
	public function trace(statement:String):Void;
	
	/**
	 * Log a statement with WARN severity. The severity levels in order from least severe to most severe are: 
	 * 	1.	TRACE 
	 * 	2.	DEBUG
	 * 	3.	INFO 
	 * 	4.	NOTICE 
	 * 	5.	WARN
	 * 	6.	ERROR 
	 * 	7.	CRITICAL 
	 * 	8.	FATAL
	 * 
	 * @param	statement	-		The String to send to the logger.
	 */
	public function warn(statement:String):Void;
	
	// PROPERTIES
	
	/**
	 * A constant representing an application update component type.
	 */
	public var APP_UPDATE:Float;
	
	/**
	 * A constant representing CRITICAL logger severity. The severity levels in 
	 * order from least severe to most severe are: 
	 * 	1.	TRACE 
	 * 	2.	DEBUG
	 * 	3.	INFO 
	 * 	4.	NOTICE 
	 * 	5.	WARN
	 * 	6.	ERROR 
	 * 	7.	CRITICAL 
	 * 	8.	FATAL
	 */
	public var CRITICAL:Float;
	
	/**
	 * A constant representing DEBUG logger severity. The severity levels in order
	 * from least severe to most severe are: 
	 * 	1.	TRACE 
	 * 	2.	DEBUG
	 * 	3.	INFO 
	 * 	4.	NOTICE 
	 * 	5.	WARN
	 * 	6.	ERROR 
	 * 	7.	CRITICAL 
	 * 	8.	FATAL
	 */
	public var DEBUG:Float;
	
	/**
	 * A constant representing an equality dependency. This is used to specify
	 * resolutions to Titanium application dependencies. 
	 */
	public var EQ:Float;
	
	/**
	 * A constant representing ERROR logger severity. The severity levels in order 
	 * from least severe to most severe are: 
	 * 	1.	TRACE 
	 * 	2.	DEBUG
	 * 	3.	INFO 
	 * 	4.	NOTICE 
	 * 	5.	WARN
	 * 	6.	ERROR 
	 * 	7.	CRITICAL 
	 * 	8.	FATAL
	 */
	public var ERROR:Float;
	
	/**
	 * A constant representing FATAL logger severity. The severity levels in order 
	 * from least severe to most severe are: 
	 * 	1.	TRACE 
	 * 	2.	DEBUG
	 * 	3.	INFO 
	 * 	4.	NOTICE 
	 * 	5.	WARN
	 * 	6.	ERROR 
	 * 	7.	CRITICAL 
	 * 	8.	FATAL
	 */
	public var FATAL:Float;
	
	/**
	 * A constant representing an greater-than dependency. This is used to specify
	 * resolutions to Titanium application dependencies. 
	 */
	public var GT:Float;
	
	/**
	 * A constant representing an greater-than-or-equal-to dependency. This is 
	 * used to specify resolutions to Titanium application dependencies. 
	 */
	public var GTE:Float;
	
	/**
	 * A constant representing INFO logger severity. The severity levels in order 
	 * from least severe to most severe are: 
	 * 	1.	TRACE 
	 * 	2.	DEBUG
	 * 	3.	INFO 
	 * 	4.	NOTICE 
	 * 	5.	WARN
	 * 	6.	ERROR 
	 * 	7.	CRITICAL 
	 * 	8.	FATAL
	 */
	public var INFO:Float;
	
	/**
	 * A constant representing an less-than dependency. This is used to specify 
	 * resolutions to Titanium application dependencies. 
	 */
	public var LT:Float;
	
	/**
	 * A constant representing an less-than-or-equal-to dependency. This is used to
	 * specify resolutions to Titanium application dependencies. 
	 */
	public var LTE:Float;
	
	/**
	 * A constant representing a Mobile SDK component type.
	 */
	public var MOBILESDK:Float;
	
	/**
	 * A constant representing a module component type.
	 */
	public var MODULE:Float;
	
	/**
	 * A constant representing NOTICE logger severity. The severity levels in order
	 * from least severe to most severe are: 
	 * 	1.	TRACE 
	 * 	2.	DEBUG
	 * 	3.	INFO 
	 * 	4.	NOTICE 
	 * 	5.	WARN
	 * 	6.	ERROR 
	 * 	7.	CRITICAL 
	 * 	8.	FATAL
	 */
	public var NOTICE:Float;
	
	/**A constant representing a runtime component type.
	 * 
	 */
	public var RUNTIME:Float;
	
	/**
	 * A constant representing an SDK component type.
	 */
	public var SDK:Float;
	
	/**
	 * A constant representing TRACE logger severity. The severity levels in order 
	 * from least severe to most severe are: 
	 * 	1.	TRACE 
	 * 	2.	DEBUG
	 * 	3.	INFO 
	 * 	4.	NOTICE 
	 * 	5.	WARN
	 * 	6.	ERROR 
	 * 	7.	CRITICAL 
	 * 	8.	FATAL
	 */
	public var TRACE:Float;
	
	/**
	 * A constant representing an UNKNOWN component type.
	 */
	public var UNKNOWN:Float;
	
	/**
	 * A constant representing WARN logger severity. The severity levels in order 
	 * from least severe to most severe are: 
	 * 	1.	TRACE 
	 * 	2.	DEBUG
	 * 	3.	INFO 
	 * 	4.	NOTICE 
	 * 	5.	WARN
	 * 	6.	ERROR 
	 * 	7.	CRITICAL 
	 * 	8.	FATAL
	 */
	public var WARN:Float;
	
}