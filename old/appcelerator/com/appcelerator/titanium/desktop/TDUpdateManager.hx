/**
 * ...
 * @author Skial Bainn
 */

package com.appcelerator.titanium.desktop;

@:native('Titanium.UpdateManager')
extern class TDUpdateManager {
	public function new():Void {}
	
	// FUNCTIONS
	
	/**
	 * Check the update service for a new version 
	 * 
	 * @param	id													-		The monitor id returned from startMonitor
	 * @return	String
	 */
	public function cancelMonitor(id:Float):String;
	
	/**
	 * Install an application update received from update monitor. This method will cause the process to first 
	 * be restarted for the update to begin. 
	 * 
	 * @param	updateSpec										-		Update spec object received from update service.
	 * @return	String
	 */
	public function installAppUpdate(updateSpec:Dynamic):String;
	
	/**
	 * Check the update service for a new version 
	 * 
	 * @param	component										-		Name of the component
	 * @param	handler											-		Function callback to call when completed
	 * @param	interval											-		Interval in milliseconds for how often to check for an update
	 * @return	Float
	 */
	public function startMonitor(component:String, handler:Dynamic, interval:Float):Float;
	
	// PROPERTIES
	
	/**
	 * Set the update handler implementation function that will be invoked when an 
	 * update is detected
	 */
	public var onupdate:String;
	
}