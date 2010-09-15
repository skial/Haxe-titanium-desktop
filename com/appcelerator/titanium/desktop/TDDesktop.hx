/**
 * ...
 * @author Skial Bainn
 */

package com.appcelerator.titanium.desktop;

@:native('Titanium.Desktop')
extern class TDDesktop {
	public function new():Void {}
	
	// FUNCTIONS
	
	/**
	 * Opens an application on the users system 
	 * 
	 * @param	path						-		The name or path to the application to open.
	 * @return	String
	 */
	public function openApplication(path:String):String;
	
	/**
	 * Opens a URL in the default system browser 
	 * 
	 * @param	url						-		The url.
	 * @return	String
	 */
	public function openURL(url:String):String;
	
	/**
	 * Takes a screenshot of the users desktop and saves it to a file 
	 * 
	 * @param	file						-		File to write the output.
	 * @return	String
	 */
	public function takeScreenshot(file:String):String;
	
}