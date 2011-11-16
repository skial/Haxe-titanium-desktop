package titanium.desktop;
/**
 * An object representing an IO pipe.
 * @since	0.5.0
 */
@:native("Titanium.Process.Pipe")
extern class Pipe {

	/**
	 * Attach an IO object to this pipe. An IO object is an object that implements a public "write(Bytes)". In Titanium, this include FileStreams, and Pipes. You may also use your own custom IO implementation here.
	 * @return	String
	 * @since	0.5.0
	 */
	public static function attach():String;

	/**
	 * Close this pipe to further reading/writing.
	 * @return	String
	 * @since	0.5.0
	 */
	public static function close():String;

	/**
	 * Detach an IO object from this pipe. see Process.Pipe.attach.
	 * @return	String
	 * @since	0.5.0
	 */
	public static function detach():String;

	/**
	 * 
	 * @return	Bool
	 * @since	0.5.0
	 */
	public static function isAttached():Bool;

	/**
	 * Write data to this pipe
	 * @param	data	a Bytes object or String to write to this pipe
	 * @return	Float
	 * @since	0.5.0
	 */
	public static function write(data:Bytes):Float;
}