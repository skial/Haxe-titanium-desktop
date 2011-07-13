/**
 * ...
 * @author Skial Bainn
 */

package com.appcelerator.titanium.desktop.api;

@:native('Titanium.API.Script')
extern class TDScript {
	public function new():Void {}
	
	// METHODS
	
	/** ?? Titanium website - http://developer.appcelerator.com/apidoc/desktop/latest/Titanium.API.Script-object.html -
	 * does not render correctly, so this function might not have the correct params and return type ??
	 * 
	 * Adds a script evalutor Script evaluators are responsible for matching and evaluating custom 
	 * 
	 * @return
	 */
	public function addScriptEvaluator():Dynamic;
	
}