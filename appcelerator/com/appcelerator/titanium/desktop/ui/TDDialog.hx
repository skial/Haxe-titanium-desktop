/**
 * ...
 * @author Skial Bainn
 */

package com.appcelerator.titanium.desktop.ui;

@:native('Titanium.UI.Dialog')
extern class TDDialog {
	public function new():Void {}
	
	// METHODS
	
	/**
	 * Get an incoming UI dialog parameter 
	 * 
	 * @param	name											-		Name of the parameter
	 * @param	defaultValue								-		Default value of the parameter
	 * @return	Dynamic
	 */
	public function getDialogParameter(name:String, defaultValue:Dynamic):Dynamic;
	
	/**
	 * get results from UI dialog 
	 * 
	 * @return	String
	 */
	public function getDialogResult():String;
	
}