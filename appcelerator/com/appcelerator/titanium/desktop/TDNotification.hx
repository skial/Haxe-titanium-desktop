/**
 * ...
 * @author Skial Bainn
 */

package com.appcelerator.titanium.desktop;

import com.appcelerator.titanium.desktop.notification.TDNotificationChild;

@:native('Titanium.Notification')
extern class TDNotification {
	public function new():Void {}
	
	// OBJECTS
	
	/**
	 * An object representing a desktop notification.
	 */
	public var Notification:TDNotificationChild;
	
	// FUNCTIONS
	
	/**
	 * Creates a new Notification object 
	 * 
	 * @param	?window								-		(optional) The window object to use
	 * @return	Notification.Notification 
	 */
	public function createNotification(?window:Dynamic):TDNotificationChild;
	
}