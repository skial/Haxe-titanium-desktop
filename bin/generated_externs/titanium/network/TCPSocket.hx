package titanium.network;
/**
 * An object representing a TCP client socket connection.
 * @since	0.2.0
 */
@:native("Titanium.Network.TCPSocket")
extern class TCPSocket {

	/**
	 * Close this Network.TCPSocket connection. If there is no open
	 * connection then do nothing. Return true if the connection was
	 * closed and false otherwise.
	 * @return	Bool
	 * @since	0.2.0
	 */
	public static function close():Bool;

	/**
	 * Connect the Socket object to the host specified during creation. The connection will be made asynchronously. Use onError to detect failures.
	 * @return	String
	 * @since	0.2.0
	 */
	public static function connect():String;

	/**
	 * Check whether the Socket is closed.
	 * @return	Bool
	 * @since	0.2.0
	 */
	public static function isClosed():Bool;

	/**
	 * Set the callback that will be fired when the Socket encounters an error.
	 * @param	onError	Function to be called when an error happens.
	 * @return	String
	 * @since	0.8.0
	 */
	public static function onError(onError:Dynamic):String;

	/**
	 * Set a callback that will be fired when data is received on the Socket.
	 * @param	onRead	Function to be called when data is received.
	 * @return	String
	 * @since	0.2.0
	 */
	public static function onRead(onRead:Dynamic):String;

	/**
	 * Set the callback function that will be fired when a read finishes. A read is considered finished if some bytes have been read and a subsequent call to read returns zero bytes.
	 * @param	onReadComplete	Function be called when a read completes.
	 * @return	String
	 * @since	0.2.0
	 */
	public static function onReadComplete(onReadComplete:Dynamic):String;

	/**
	 * Set the callback that will be fired when an operation times out on the Socket.
	 * @param	onTimeout	Function to be called when an operation times out.
	 * @return	String
	 * @since	0.2.0
	 */
	public static function onTimeout(onTimeout:Dynamic):String;

	/**
	 * Set a callback that will be fired when data is written on the Socket.
	 * @param	onWrite	Function to be called when data is written.
	 * @return	String
	 * @since	0.2.0
	 */
	public static function onWrite(onWrite:Dynamic):String;

	/**
	 * Write data to the Socket's connection, if open.
	 * @param	data	The data to write to the connection.
	 * @return	Bool
	 * @since	0.2.0
	 */
	public static function write(data:String):Bool;
}