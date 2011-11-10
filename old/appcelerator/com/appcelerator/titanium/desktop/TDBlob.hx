/**
 * ...
 * @author Skial Bainn
 */

package com.appcelerator.titanium.desktop;

extern class TDBlob {
	public function new():Void {}
	
	// METHODS
	
	/**
	 * Return the character code (or byte value) at the given index in a Blob.
	 * 
	 * @param	index			-		The index to look for a character code at.
	 * @return
	 */
	public function byteAt(index:Float):Float;
	
	/**
	 * Return a character representing a byte at the given index in a Blob.
	 * 
	 * @param	index			-		The index to look for a character at.
	 * @return
	 */
	public function charAt(index:Float):String;
	
	/**
	 * Concatenate multiple Blob and Strings into one Blob.
	 * 
	 * @param	array			-		A variable-length list of Blob or Strings to concatenate to this Blob object.
	 * @return
	 */
	public function concat(array:Array<Dynamic>):TDBlob;
	
	/**
	 * Return the index of a String within this Blob. The String will first be converted to UTF-8 before this method searches the Blob object.
	 * 
	 * @param	needle		-		The String to search for.
	 * @return
	 */
	public function indexOf(needle:String):Float;
	
	/**
	 * Return the last index of a String within this Blob. The String will first be converted to UTF-8 before this method searches the Blob object.
	 * 
	 * @param	needle		-		The String to search for.
	 * @return
	 */
	public function lastIndexOf(needle:String):Float;
	
	/**
	 * Split a bytes as if it were a String given a delimiter. The Blob object is expected to contain a UTF-8 encoded String. That means that the 
	 * first NUL character in the string will be the end of the string.
	 * 
	 * @param	delimiter	-		The index to look for a character at.
	 * @param	?limit		-		(optional) The maximum number of matches to return.
	 * @return
	 */
	public function split(delimiter:String, ?limit:Float):Array<Dynamic>;
	
	/**
	 * Return a substring of a Blob given a start index and a length. This assumes that Blob contains a UTF-8
	 * string. This means that the first NUL character in the Blob object will signify the end of the string. If no
	 * length index is given, return all characters from the start index to the end of the string.
	 * 
	 * @param	startIndex	-		The starting index.
	 * @param	?length		-		(optional) The length of the substring.
	 * @return
	 */
	public function substr(startIndex:Float, ?length:Float):String;
	
	/**
	 * Return a substring of a Blob given a start index and end index. This assumes that Blob contains a UTF-8
	 * string. This means that the first NUL character in the Blob object will signify the end of the string. If no 
	 * end index is given, return all characters from the start index to the end of the string. If startIndex > 
	 * endIndex, the indices are swapped. 
	 * 
	 * @param	startIndex	-		The starting index.
	 * @param	?endIndex	-		(optional) The ending index.
	 * @return
	 */
	public function substring(startIndex:Float, ?endIndex:Float):String;
	
	/**
	 * Convert characters in the Blob to lower-case as if it it were a String. This method assumes that Blob
	 * contains a UTF-8 string. This means that the first NUL character in the Blob object will signify the end of 
	 * the string.
	 * 
	 * @return
	 */
	public function toLowerCase():String;
	
	/**
	 * Return a string representation of a Byte object. This method assumes that Blob contains a UTF-8 string.
	 * This means that the first NUL character in the Blob object will signify the end of the string.
	 * 
	 * @return
	 */
	public function toString():String;
	
	/**
	 * Convert characters in the Blob to upper-case as if it it were a String. This method assumes that Blob 
	 * contains a UTF-8 string. This means that the first NUL character in the Blob object will signify the end of
	 * the string. 
	 *  
	 * @return
	 */
	public function toUpperCase():String;
	
	// PROPERTIES
	
	/**
	 * The number of bytes in this Blob object.
	 */
	public var length:String;
	
}