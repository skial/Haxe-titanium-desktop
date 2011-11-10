/**
 * ...
 * @author Skial Bainn
 */

package com.appcelerator.titanium.desktop.api;

@:native('Titanium.API.Component')
extern class TDComponent {
	public function new():Void {}
	
	// METHODS
	
	/**
	 * Get the name of this component. 
	 * 
	 * @return
	 */
	public function getName():String;
	
	/**
	 * Get the path to this component. 
	 * 
	 * @return
	 */
	public function getPath():String;
	
	/**
	 * Get the type of this component. Component types are defined as constants on the API module. 
	 * @return
	 */
	public function getType():Float;
	
	/**
	 * Get the version of this component. Note that bundled components do not currently have a version.
	 * 
	 * @return
	 */
	public function getVersion():String;
	
	/**
	 * Whether or not this component is bundled with an application. 
	 * 
	 * @return
	 */
	public function isBundled():Bool;
	
	/**
	 * Whether or not this component is currently loaded. 
	 * 
	 * @return
	 */
	public function isLoaded():Bool;
	
}