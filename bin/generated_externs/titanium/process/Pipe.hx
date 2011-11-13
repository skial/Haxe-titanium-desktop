package titanium.process;
/**
 * An object representing an IO pipe.
 * @since	0.5.0
 */
@:native("Titanium.Process.Pipe")
extern class Pipe {
	public function new():Void;

	/**
	 * Attach an IO object to this pipe. An IO object is an object that implements a public "write(Bytes)". In Titanium, this include FileStreams, and Pipes. You may also use your own custom IO implementation here.
	 * @return	String
	 * @since	0.5.0
	 */
	public function attach():String;

	/**
	 * Close this pipe to further reading/writing.
	 * @return	String
	 * @since	0.5.0
	 */
	public function close():String;

	/**
	 * Detach an IO object from this pipe. see Process.Pipe.attach.
	 * @return	String
	 * @since	0.5.0
	 */
	public function detach():String;

	/**
	 * 
	 * @return	Bool
	 * @since	0.5.0
	 */
	public function isAttached():Bool;

	/**
	 * Write data to this pipe
	 * @param	data	a Bytes object or String to write to this pipe
	 * @return	Float
	 * @since	0.5.0
	 */
	public function write(data:Bytes):Float;
}