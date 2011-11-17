package titanium.desktop;
/**
 * An object for holding arrays of bytes.
 * @since	0.7.0
 */
@:native("Titanium.Bytes")
extern class Bytes {

	/**
	 * The number of bytes in this Bytes object.
	 * @since	0.3.0
	 */
	public var length:String;

	/**
	 * Return the character code (or byte value) at the given index in a Bytes.
	 * @param	index	The index to look for a character code at.
	 * @return	Float
	 * @since	0.7.0
	 */
	public static function byteAt(index:Float):Float;

	/**
	 * Return a character representing a byte at the given index in a Bytes.
	 * @param	index	The index to look for a character at.
	 * @return	String
	 * @since	0.3.0
	 */
	public static function charAt(index:Float):String;

	/**
	 * Concatenate multiple Bytes and Strings into one Bytes.
	 * @param	...	A variable-length list of Bytes or Strings to concatenate to this Bytes object.
	 * @return	Bytes
	 * @since	0.7.0
	 */
	@:overload(function(arg:Dynamic):Bytes{})
	public static function concat(arg:String):Bytes;

	/**
	 * Return the index of a String within this Bytes. The String will first
	 * be converted to UTF-8 before this method searches the Bytes object.
	 * @param	needle	The String to search for.
	 * @return	Float
	 * @since	0.3.0
	 */
	public static function indexOf(needle:String):Float;

	/**
	 * Return the last index of a String within this Bytes. The String will first
	 * be converted to UTF-8 before this method searches the Bytes object.
	 * @param	needle	The String to search for
	 * @return	Float
	 * @since	0.3.0
	 */
	public static function lastIndexOf(needle:String):Float;

	/**
	 * Split a bytes as if it were a String given a delimiter. The Bytes object is
	 * expected to contain a UTF-8 encoded String. That means that the first NUL
	 * character in the string will be the end of the string.
	 * @param	delimiter	The index to look for a character at
	 * @param	limit	(optional) The maximum number of matches to return
	 * @return	Array<String>
	 * @since	0.3.0
	 * @example	<pre><code>
		    // Bytes.split returns empty matches. For example:
		    // list should be ['abc', 'def', '', '']
		    var bytes = API.createBytes("abc,def,,");
		    var list = bytes.split(",");
		</code></pre>
		
	 */
	public static function split(delimiter:String, ?limit:Float):Array<String>;

	/**
	 * Return a substring of a Bytes given a start index and a length. This
	 * assumes that Bytes contains a UTF-8 string. This means that the first
	 * NUL character in the Bytes object will signify the end of the string.
	 * If no length index is given, return all characters from the start index
	 * to the end of the string.
	 * @param	startIndex	The starting index
	 * @param	length	(optional) The length of the substring
	 * @return	String
	 * @since	0.3.0
	 * @example	<pre><code>
		    // Originally from: https://developer.mozilla.org/en/Core_JavaScript_1.5_Reference/Objects/String/substr
		    var bytes = API.createBytes("abcdefghij");
		    print("(1,2): "    + str.substr(1,2)); // bc
		    print("(-3,2): "   + str.substr(-3,2)); // hi
		    print("(-3): "     + str.substr(-3)); // hij
		    print("(1): "      + str.substr(1)); // bcdefghij
		    print("(-20, 2): " + str.substr(-20,2)); // ab
		    print("(20, 2): "  + str.substr(20,2)); // ''
		</code></pre>
		
	 */
	public static function substr(startIndex:Float, ?length:Float):String;

	/**
	 * Return a substring of a Bytes given a start index and end index. This
	 * assumes that Bytes contains a UTF-8 string. This means that the first
	 * NUL character in the Bytes object will signify the end of the string.
	 * If no end index is given, return all characters from the start index
	 * to the end of the string. If startIndex &gt; endIndex, the indices are swapped.
	 * @param	startIndex	The starting index
	 * @param	endIndex	(optional) The ending index
	 * @return	String
	 * @since	0.3.0
	 * @example	<pre><code>
		    // Originally from: https://developer.mozilla.org/En/Core_JavaScript_1.5_Reference/Objects/String/Substring
		    function replaceString(oldS, newS, fullS)
		    {
		        // Replaces oldS with newS in the string fullS
		        for (var i = 0; i < fullS.length; i++)
		        {
		            if (fullS.substring(i, i + oldS.length) == oldS)
		            {
		                fullS = fullS.substring(0, i) + newS + fullS.substring(i + oldS.length, fullS.length);
		            }
		        }
		        return fullS;
		    }
		
		    replaceString("World", "Web", API.createBytes("Brave New World"));
		</code></pre>
		
	 */
	public static function substring(startIndex:Float, ?endIndex:Float):String;

	/**
	 * Convert characters in the Bytes to lower-case as if it it were a String.
	 * This method assumes that Bytes contains a UTF-8 string. This means that the first
	 * NUL character in the Bytes object will signify the end of the string.
	 * @return	String
	 * @since	0.3.0
	 */
	public static function toLowerCase():String;

	/**
	 * Return a string representation of a Byte object.
	 * This method assumes that Bytes contains a UTF-8 string. This means that the first
	 * NUL character in the Bytes object will signify the end of the string.
	 * @return	String
	 * @since	0.3.0
	 */
	public static function toString():String;

	/**
	 * Convert characters in the Bytes to upper-case as if it it were a String.
	 * This method assumes that Bytes contains a UTF-8 string. This means that the first
	 * NUL character in the Bytes object will signify the end of the string.
	 * @return	String
	 * @since	0.3.0
	 */
	public static function toUpperCase():String;
}