/**
 * ...
 * @author Skial Bainn
 */

package com.appcelerator.titanium.desktop;

@:native('Titanium.Analytics')
extern class TDAnalytics {
	public function new():Void {}
	
	// FUNCTIONS
	
	/**
	 * Send an analytics event associated with application feature functionality. 
	 * 
	 * @param	name				-		Feature name.
	 * @param	data				-		Extra event data to pass along. This will be converted to JSON.
	 */
	public function featureEvent(name:String, data:Dynamic):Void;
	
	/**
	 * Send an analytics event associated with application navigation. 
	 * 
	 * @param	from				-		Navigation starting point, the context we're leaving.
	 * @param	to					-		Navigation ending point, the context to which we're going.
	 * @param	name				-		Event name.
	 * @param	data				-		Extra event data to pass along. This will be converted to JSON.
	 */
	public function navEvent(from:String, to:String, name:String, data:Dynamic):Void;
	
	/**
	 * Send an analytics event associated with application settings or configuration 
	 * 
	 * @param	name				-		Setting name.
	 * @param	data				-		Extra event data to pass along. This will be converted to JSON.
	 * @return	String
	 */
	public function settingsEvent(name:String, data:Dynamic):String;
	
	/**
	 * Send an analytics event tracking the duration of an application action 
	 * 
	 * @param	event				-		Event name
	 * @param	start				-		Event start time (optional if duration is specified).
	 * @param	stop				-		Event stop time (optional if duration is specified).
	 * @param	duration			-		Duration in seconds (optional if both start and stop are specified)
	 * @param	data				-		Extra event data to pass along. This will be converted to JSON.
	 * @return	String
	 */
	public function timedEvent(event:String, start:Date, stop:Date, duration:Float, data:Dynamic):String;
	
	/**
	 * Send an analytics event not covered by the other interfaces. 
	 * 
	 * @param	name				-		Event name.
	 * @param	data				-		Extra event data to pass along. This will be converted to JSON.
	 * @return	String
	 */
	public function userEvent(name:String, data:Dynamic):String;
	
}