/**
 * ...
 * @author Skial Bainn
 */

package com.appcelerator.titanium.desktop.app;

@:native('Titanium.App.Properties')
extern class TDProperties {
	public function new():Void {}
	
	// METHODS
	
	/**
	 * Returns a property value as double. Throws an exception if this value can not be found and no default is 
	 * provided or the value stored in the properties file could not be converted to the appropriate type. 
	 * 
	 * @param	name					-		The name of the property to return.
	 * @param	default				-		The value to return if this property is not set.
	 * @return	Float
	 */
	public function getDouble(name:String, _default:Float):Float;
	
	/**
	 * Returns a property value as an integer. Throws an exception if this value can not be found and no default
	 * is provided or the value stored in the properties file could not be converted to the appropriate type. 
	 * 
	 * @param	name					-		The name of the property to return.
	 * @param	default				-		The value to return if this property is not set.
	 * @return	Float
	 */
	public function getInt(name:String, _default:Float):Float;
	
	/**
	 * Returns a property value as an Array. Throws an exception if this value can not be found and no default 
	 * is provided or the value stored in the properties file could not be converted to the appropriate type. 
	 * 
	 * @param	name					-		The name of the property to return.
	 * @param	default				-		The value to return if this property is not set.
	 * @return	Array
	 */
	public function getList(name:String, _default:Array<Dynamic>):Array<Dynamic>;
	
	/**
	 * Returns a property value as a String. Throws an exception if this value can not be found and no default is
	 * provided or the value stored in the properties file could not be converted to the appropriate type. 
	 * 
	 * @param	name					-		The name of the property to return.
	 * @param	default				-		The value to return if this property is not set.
	 * @return	String
	 */
	public function getString(name:String, _default:String):String;
	
	/**
	 * Save this App.Properties object to file at the given path. 
	 * 
	 * @param	path					-		The path to the file to save this App.Properties object to.
	 */
	public function listProperties(path:String):Void;
	
	/**
	 * Set a double property value given the name and value. 
	 * 
	 * @param	name					-		The name of the property to set.
	 * @param	value					-		The value to set the given property to.
	 */
	public function setDouble(name:String, value:Float):Void;
	
	/**
	 * Set an integer property value given the name and value. 
	 * 
	 * @param	name					-		The name of the property to set.
	 * @param	value					-		The value to set the given property to.
	 */
	public function setInt(name:String, value:Float):Void;
	
	/**
	 * Set a list property value given the name and array of Strings. 
	 * 
	 * @param	name					-		The name of the property to set.
	 * @param	value					-		The value to set the given property to.
	 */
	public function setList(name:String, value:Array<Dynamic>):Void;
	
	/**
	 * Set a String property value given the name and value. 
	 * 
	 * @param	name					-		The name of the property to set.
	 * @param	value					-		The value to set the given property to.
	 */
	public function setString(name:String, value:String):Void;
	
}