/**
 * ...
 * @author Skial Bainn
 */

package com.appcelerator.titanium.desktop;

@:native('Titanium.JSON')
extern class TDJSON {
	public function new():Void {}
	
	// FUNCTIONS
	
	/**
	 * Deserialize a JSON string into a JavaScript value. 
	 * 
	 * @param	jsonString					-		JSON string to deserialize into a JavaScript object.
	 * @return	Dynamic
	 */
	public function parse(jsonString:String):Dynamic;
	
	/**
	 * Serialize a JavaScript value into a JSON string. 
	 * 
	 * @param	value							-		The JavaScript value to serialize into a JSON string.
	 * @return	String
	 */
	public function stringify(value:Dynamic):String;
	
}