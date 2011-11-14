package titanium.ui;
/**
 * A module used for accessing clipboard data.
 * @since	0.7.0
 */
@:native("Titanium.UI.Clipboard")
extern class Clipboard {

	/**
	 * Clear data of the given mime-type from the clipboard. If no mime-type is given, clear all data from the clipboard.
	 * @param	type	(optional) The mime-type of the data to clear.
	 * @return	String
	 * @since	0.7.0
	 */
	public static function clearData(type:String):String;

	/**
	 * Clear the text portion of the clipboard.
	 * @return	String
	 * @since	0.7.0
	 */
	public static function clearText():String;

	/**
	 * Get the data on the clipboard from the portion which contains data of the given mime-type.
	 * @param	type	The mime-type of the data to get.
	 * @return	String
	 * @since	0.7.0
	 */
	public static function getData(type:String):String;

	/**
	 * Get the current text on the clipboard.
	 * @return	String
	 * @since	0.7.0
	 */
	public static function getText():String;

	/**
	 * Return true if there is any content of the given mime-type on the clipboard.
	 * @param	type	(optional) The mime-type of the data to check.
	 * @return	Bool
	 * @since	0.7.0
	 */
	public static function hasData(type:String):Bool;

	/**
	 * Return true if there is any content in the text portion of the clipboard.
	 * @return	Bool
	 * @since	0.7.0
	 */
	public static function hasText():Bool;

	/**
	 * Set the data on the clipboard given a mime-type and the new data. This method will set data on the appropriate portion of the clipboard for the given mime-type.
	 * @param	type	The mime-type of the data to set.
	 * @param	data	The new clipboard text.
	 * @return	String
	 * @since	0.7.0
	 */
	public static function setData(type:String, data:String):String;

	/**
	 * Set the text on the clipboard. This will overwrite the current contents of the clipboard.
	 * @param	newText	The new clipboard text. If the text is an empty string
	 * @return	String
	 * @since	0.7.0
	 */
	public static function setText(newText:String):String;
}