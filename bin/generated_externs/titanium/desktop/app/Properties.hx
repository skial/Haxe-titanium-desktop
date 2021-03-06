package titanium.desktop.app;
/**
 * An object holding a group of properties. Properties may either be defined
in tiapp.xml (read-only) or in any other file on the filesystem. Titanium
Properties offer an alternative to traditional HTML5 DOM storage.
 * @since	0.2.0
 */
@:native("Titanium.App.Properties")
extern class Properties {

	/**
	 * Returns a property value as double.
	 * Throws an exception if this value can not be found and no default is
	 * provided or the value stored in the properties file could not be
	 * converted to the appropriate type.
	 * @param	name	The name of the property to return.
	 * @param	default	The value to return if this property is not set.
	 * @return	Float
	 * @since	0.2.0
	 */
	public function getDouble(name:String, _default:Float):Float;

	/**
	 * Returns a property value as an integer.
	 * Throws an exception if this value can not be found and no default is
	 * provided or the value stored in the properties file could not be
	 * converted to the appropriate type.
	 * @param	name	The name of the property to return.
	 * @param	default	The value to return if this property is not set.
	 * @return	Float
	 * @since	0.2.0
	 */
	public function getInt(name:String, _default:Float):Float;

	/**
	 * Returns a property value as an Array.
	 * Throws an exception if this value can not be found and no default is
	 * provided or the value stored in the properties file could not be
	 * converted to the appropriate type.
	 * @param	name	The name of the property to return.
	 * @param	default	The value to return if this property is not set.
	 * @return	Dynamic
	 * @since	0.2.0
	 */
	public function getList(name:Dynamic, _default:Dynamic):Dynamic;

	/**
	 * Returns a property value as a String.
	 * Throws an exception if this value can not be found and no default is
	 * provided or the value stored in the properties file could not be
	 * converted to the appropriate type.
	 * @param	name	The name of the property to return.
	 * @param	default	The value to return if this property is not set.
	 * @return	String
	 * @since	0.2.0
	 */
	public function getString(name:String, _default:String):String;

	/**
	 * Query whether or not a given property exists in this Property object.
	 * @param	name	The name of the property to query.
	 * @return	Bool
	 * @since	0.2.0
	 */
	public function hasProperty(name:String):Bool;

	/**
	 * Returns an Array of all property names in this App.Properties object.
	 * @return	Array<String>
	 * @since	0.2.0
	 */
	public function listProperties():Array<String>;

	/**
	 * Save this App.Properties object to file at the given path.
	 * @param	path	The path to the file to save this App.Properties object to.
	 * @return	Void
	 * @since	0.2.0
	 */
	public function saveTo(path:String):Void;

	/**
	 * Set a double property value given the name and value.
	 * @param	name	The name of the property to set.
	 * @param	value	The value to set the given property to.
	 * @return	Void
	 * @since	0.2.0
	 */
	public function setDouble(name:String, value:Float):Void;

	/**
	 * Set an integer property value given the name and value.
	 * @param	name	The name of the property to set.
	 * @param	value	The value to set the given property to.
	 * @return	Void
	 * @since	0.2.0
	 */
	public function setInt(name:String, value:Float):Void;

	/**
	 * Set a list property value given the name and array of Strings.
	 * @param	name	The name of the property to set.
	 * @param	value	The value to set the given property to.
	 * @return	Void
	 * @since	0.2.0
	 */
	public function setList(name:String, value:Array<String>):Void;

	/**
	 * Set a String property value given the name and value.
	 * @param	name	The name of the property to set.
	 * @param	value	The value to set the given property to.
	 * @return	Void
	 * @since	0.2.0
	 */
	public function setString(name:String, value:String):Void;
}