/**
 * ...
 * @author Skial Bainn
 */

package com.appcelerator.titanium.desktop;

import com.appcelerator.titanium.desktop.platform.TDInterface;

@:native('Titanium.Platform')
extern class TDPlatform {
	public function new():Void {}
	
	// OBJECTS
	
	public var Interface:TDInterface;
	
	// FUNCTIONS
	
	/**
	 * Create a globally unique id. 
	 * 
	 * @return	String
	 */
	public function createUUID():String;
	
	/**
	 * A list of network interfaces of the current system 
	 * 
	 * @return	String
	 */
	public function interfaces():String;
	
	// PROPERTIES
	
	/**
	 * The primary IP address of the system
	 */
	public var address:String;
	
	/**
	 * The operating system architecture
	 */
	public var architecture:String;
	
	/**
	 * The unique machine id of the system
	 */
	public var id:String;
	
	/**
	 * The primary MAC address of the system
	 */
	public var macaddress:String;
	
	/**
	 * The operating system name
	 */
	public var name:String;
	
	/**
	 * The architecture type of the system (either 32 bit or 64 bit)
	 */
	public var ostype:String;
	
	/**
	 * The number of processors for the machine
	 */
	public var processorCount:String;
	
	/**
	 * The platform's user name
	 */
	public var username:String;
	
	/**
	 * The operating system version
	 */
	public var version:String;
	
}