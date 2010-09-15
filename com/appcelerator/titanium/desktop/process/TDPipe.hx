/**
 * ...
 * @author Skial Bainn
 */

package com.appcelerator.titanium.desktop.process;

@:native('Titanium.Process.Pipe')
extern class TDPipe {
	public function new():Void {}
	
	// METHODS
	
	/**
	 * Attach an IO object to this pipe. An IO object is an object that implements a public "write(Blob)". In 
	 * Titanium, this include FileStreams, and Pipes. You may also use your own custom IO implementation
	 * here. 
	 * 
	 * @return	String
	 */
	public function attach():String;
	
	/**
	 * Close this pipe to further reading/writing. 
	 * 
	 * @return	String
	 */
	public function close():String;
	
	/**
	 * Detach an IO object from this pipe. see Process.Pipe.attach. 
	 * 
	 * @return	String
	 */
	public function detach():String;
	
	/**
	 * None
	 * 
	 * @return	Boolean
	 */
	public function isAttached():Bool;
	
	/**
	 * Write data to this pipe 
	 * 
	 * @param	data								-		a Blob object or String to write to this pipe
	 * @return	Float
	 */
	public function write(data:Dynamic):Float;
	
}