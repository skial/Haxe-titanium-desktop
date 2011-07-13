/**
 * ...
 * @author Skial Bainn
 */

package com.appcelerator.titanium.desktop.notification;

@:native('Titanium.Notification.Notification')
extern class TDNotificationChild {
	public function new():Void {}
	
	// METHODS
	
	/**
	 * Hides a notification object 
	 * 
	 * @param	animate								-		Whether or not to animate the notification
	 * @return	Boolean
	 */
	public function hide(animate:Bool):String;
	
	/**
	 * Sets the callback function fired when a Notification object is clicked 
	 * 
	 * @param	handler								-		The callback function
	 * @return	String
	 */
	public function setCallback(handler:Dynamic):String;
	
	/**
	 * Sets the icon of a Notification object 
	 * 
	 * @param	icon									-		The path of the icon for the Notification object
	 * @return	String
	 */
	public function setIcon(icon:String):String;
	
	/**
	 * Sets the message of a Notification object 
	 * 
	 * @param	message								-		The message of the Notification object
	 * @return	String
	 */
	public function setMessage(message:String):String;
	
	/**
	 * Set amount of time in milliseconds before the notification disappears. This feature is currently
	 * unsupported on OS X. The default value is 3 seconds. 
	 * 
	 * @param	timeout								-		The timeout in milliseconds.
	 * @return	String
	 */
	public function setTimeout(timeout:Float):String;
	
	/**
	 * Sets the title of a Notification object 
	 * 
	 * @param	title									-		The title of the Notification object
	 * @return	String
	 */
	public function setTitle(title:String):String;
	
	/**
	 * Show this Notification. 
	 * 
	 * @param	animate								-		Whether or not to animate the notification
	 * @param	autoHide								-		Whether or not to automatically hide the notification
	 * @return	String
	 */
	public function show(animate:Bool, autoHide:Bool):String;
	
}