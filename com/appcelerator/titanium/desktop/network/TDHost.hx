/**
 * ...
 * @author Skial Bainn
 */

package com.appcelerator.titanium.desktop.network;

@:native('Titanium.Network.Host')
extern class TDHost {
	public function new():Void {}
	
	// METHODS
	
	/**
	 * Returns the list of address for a Host object 
	 * 
	 * @return	Array
	 */
	public function getAddresses():Array<Dynamic>;
	
	/**
	 * Returns the list of aliases for a Host object 
	 * 
	 * @return	Array
	 */
	public function getAliases():Array<Dynamic>;
	
	/**
	 * Return the hostname of a Host object 
	 * 
	 * @return	String
	 */
	public function getName():String;
	
	/**
	 * Checks whether the Host object is invalid 
	 * 
	 * @return	Boolean
	 */
	public function isInvalid():Bool;
	
	/**
	 * Returns a string representation of a Host object 
	 * 
	 * @return	String
	 */
	public function toString():String;
	
}