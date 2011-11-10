/**
 * ...
 * @author Skial Bainn
 */

package com.appcelerator.titanium.desktop.network;

@:native('Titanium.Network.TCPSocket')
extern class TDTCPSocket {
	public function new():Void {}
	
	// METHODS
	
	/**
	 * Close this Network.TCPSocket connection. If there is no open connection then do nothing. Return true if
	 * the connection was closed and false otherwise. 
	 * 
	 * @return	Boolean
	 */
	public function close():Bool;
	
	/**
	 * Connect the Socket object to the host specified during creation. The connection will be made 
	 * asynchronously. Use onError to detect failures. 
	 * 
	 * @return	String
	 */
	public function connect():String;
	
	/**
	 * Check whether the Socket is closed. 
	 * 
	 * @return	Boolean
	 */
	public function isClosed():Bool;
	
	/**
	 * Set the callback that will be fired when the Socket encounters an error. 
	 * 
	 * @param	onerror						-		Function to be called when an error happens.
	 * @return	String
	 */
	public function onError(onerror:Dynamic):String;
	
	/**
	 * Set a callback that will be fired when data is received on the Socket. 
	 * 
	 * @param	onread						-		Function to be called when data is received.
	 * @return	String
	 */
	public function onRead(onread:Dynamic):String;
	
	/**
	 * Set the callback function that will be fired when a read finishes. A read is considered finished if some 
	 * bytes have been read and a subsequent call to read returns zero bytes. 
	 * 
	 * @param	onreadcomplete				-		Function be called when a read completes.
	 * @return	String
	 */
	public function onReadComplete(onreadcomplete:Dynamic):String;
	
	/**
	 * Set the callback that will be fired when an operation times out on the Socket. 
	 * 
	 * @param	ontimeout					-		Function to be called when an operation times out.
	 * @return	String
	 */
	public function onTimeout(ontimeout:Dynamic):String;
	
	/**
	 * Set a callback that will be fired when data is written on the Socket. 
	 * 
	 * @param	onwrite						-		Function to be called when data is written.
	 * @return	String
	 */
	public function onWrite(onwrite:Dynamic):String;
	
	/**
	 * Write data to the Socket's connection, if open. 
	 * 
	 * @param	data							-		The data to write to the connection.
	 * @return	Boolean
	 */
	public function write(data:String):Bool;
	
}