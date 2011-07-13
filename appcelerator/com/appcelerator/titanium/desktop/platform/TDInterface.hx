/**
 * ...
 * @author Skial Bainn
 */

package com.appcelerator.titanium.desktop.platform;

@:native('Titanium.Platform.Interface')
extern class TDInterface {
	public function new():Void {}
	
	// PROPERTIES
	
	/**
	 * The IP address of this network interface.
	 */
	public var address:String;
	
	/**
	 * The display name of this network interface.
	 */
	public var displayName:String;
	
	/**
	 * The canonical name of this network interface.
	 */
	public var name:String;
	
}