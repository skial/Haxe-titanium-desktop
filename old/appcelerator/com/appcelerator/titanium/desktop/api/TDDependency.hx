/**
 * ...
 * @author Skial Bainn
 */

package com.appcelerator.titanium.desktop.api;

@:native('Titanium.API.Dependency')
extern class TDDependency {
	public function new():Void {}
	
	// METHODS
	
	/**
	 * Get the name of this dependency. 
	 * 
	 * @return
	 */
	public function getName():String;
	
	/**
	 * Get the requirement for this dependency. Dependency requirement types are defined as constants on the
	 * API module. Currently the installer only support API.EQ dependency types. 
	 * 
	 * @return
	 */
	public function getRequirement():String;
	
	/**
	 * Get the type of this dependency. Dependency types are defined as constants on the API module (e.g. 
	 * API.SDK). 
	 * 
	 * @return
	 */
	public function getType():Float;
	
	/**
	 * Get the version part of this dependency. 
	 * 
	 * @return
	 */
	public function getVersion():String;
	
}