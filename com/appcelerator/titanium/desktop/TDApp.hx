/**
 * ...
 * @author Skial Bainn
 */

package com.appcelerator.titanium.desktop;

import com.appcelerator.titanium.desktop.app.TDProperties;

@:native('Titanium.App')
extern class TDApp {
	public function new():Void {}
	
	// OBJECTS
	
	/**
	 * An object holding a group of properties. Properties may either be defined in tiapp.xml 
	 * (read-only) or in any other file on the filesystem. Titanium Properties offer an 
	 * alternative to traditional HTML5 DOM storage. 
	 */
	public var Properties:TDProperties;
	
	// FUNCTIONS
	
	/**
	 * Convert the given app URL to a filesystem path. App URLs generally have the form 
	 * 'app://subdir/resource.html' and resolve to a fileystem path rooted in the application resources 
	 * directory. 
	 * 
	 * @return	String
	 */
	public function appURLToPath():String;
	
	/**
	 * Create a new App.Properties object. 
	 * 
	 * @param	?properties				-		(optional) Initial properties for the new App.Properties object.
	 * @return	App.Properties 
	 */
	public function createProperties(?properties:Dynamic):TDProperties;
	
	/**
	 * Cause the application to exit after firing the Titanium.EXIT event. The application isn't gauaranteed to 
	 * exit when this method is called, because an event handler may cancel the EXIT event by calling 
	 * preventDefault or stopPropagation on it. 
	 */
	public function exit():Void;
	
	/**
	 * Return the command-line arguments passed to this application, excluding the first which is the path to 
	 * the application executable. 
	 * @return	Array
	 */
	public function getArguments():Array<Dynamic>;
	
	/**
	 * Return the application's copyright information, defined in the tiapp.xml file. 
	 * 
	 * @return	String
	 */
	public function getCopyright():String;
	
	/**
	 * Return the application's description, defined in the tiapp.xml file. 
	 * 
	 * @return	String
	 */
	public function getDescription():String;
	
	/**
	 * Return the application's GUID, defined in the application manifest. 
	 * 
	 * @return	String
	 */
	public function getGUID():String;
	
	/**
	 * Return the full path to the application home directory. The application home or contents directory is the 
	 * subdirectory within the application which contains the application Resources directory and bundled 
	 * components. On OS X this is the directory "My App.app/Contents" and on Windows and Linux it is simply 
	 * the path to the application. 
	 * 
	 * @return	String
	 */
	public function getHome():String;
	
	/**
	 * Get this human readable id defined in both the application manifest and the application's tiapp.xml file. 
	 * 
	 * @return	String
	 */
	public function getID():String;
	
	/**
	 * Return the full path to the application icon. The application icon path is specified in the application 
	 * manifest and tiapp.xml relative to the application Resources directory. 
	 * 
	 * @return	String
	 */
	public function getIcon():String;
	
	/**
	 * Return the application name. 
	 * 
	 * @return	String
	 */
	public function getName():String;
	
	/**
	 * Return the full path to the application executable. 
	 * 
	 * @return	String
	 */
	public function getPath():String;
	
	/**
	 * Return the application publisher information specifiedi in the tiapp.xml file. 
	 * 
	 * @return	String
	 */
	public function getPublisher():String;
	
	/**
	 * Return the stream URL for the application's updates. 
	 * 
	 * @param	variables			-		Any number of String arguments which will be appended as path components of the stream URL.
	 * @return	String
	 */
	public function getStreamURL(variables:Array<String>):String;
	
	/**
	 * Get the system properties defined in tiapp.xml (see App.Properties). 
	 * 
	 * @return	App.Properties 
	 */
	public function getSystemProperties():TDProperties;
	
	/**
	 * Return the application URL definedin the tiapp.xml file. 
	 * 
	 * @return	String
	 */
	public function getURL():String;
	
	/**
	 * Return the application version defined in the tiapp.xml file. 
	 * 
	 * @return	String
	 */
	public function getVersion():String;
	
	/**
	 * Loads a properties list from a file path. 
	 * 
	 * @param	path					-		Path to a properties file.
	 * @return	Array
	 */
	public function loadProperties(path:String):Array<Dynamic>;
	
	/**
	 * Print a raw string to stderr without a trailing newline. 
	 * 
	 * @param	data					-		The data to print. If not a String
	 * @return	String
	 */
	public function stderr(data:Dynamic):String;
	
	/**
	 * Reads from stdin 
	 * 
	 * @param	?prompt				-		(optional) Text prompt for input. If not specified, no prompt will appear.
	 * @param	?delimiter			-		(optional) Will continue reading stdin until the delimiter character is reached. If no
	 * 											argument is specified, this method will continue reading until a newline.
	 * @return	String
	 */
	public function stdin(?prompt:String, ?delimiter:String):String;
	
	/**
	 * Print a String to stdout including a trailing newline. 
	 * 
	 * @param	data					-		The data to print. If not a String
	 */
	public function stdout(data:Dynamic):Void;
	
}