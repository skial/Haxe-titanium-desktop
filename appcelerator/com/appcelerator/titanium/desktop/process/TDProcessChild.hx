/**
 * ...
 * @author Skial Bainn
 */

package com.appcelerator.titanium.desktop.process;

@:native('Titanium.Process.Process')
extern class TDProcessChild {
	public function new():Void {}
	
	// METHODS
	
	/**
	 * Return a clone of this process' environment. 
	 * 
	 * @return	Object, environment 
	 */
	public function cloneEnvironment():Dynamic;
	
	/**
	 * Return the list of arguments associated with this Process. 
	 * 
	 * @return	Array
	 */
	public function getArguments():Array<Dynamic>;
	
	/**
	 * Return the environment associated with this process. 
	 * 
	 * @param	key								-		an environment key
	 * @return	String|Object 
	 */
	public function getEnvironment(key:String):Dynamic;
	
	/**
	 * Return the exit code for this process. Before the process exits, this value will be null. 
	 * 
	 * @return	Float
	 */
	public function getExitCode():Float;
	
	/**
	 * Return the process identifier for this process. Before the process launches, this value will be -1. 
	 * 
	 * @return	Float
	 */
	public function getPID():Float;
	
	/**
	 * Return the stderr pipe for this process. 
	 * 
	 * @return	Process.Pipe 
	 */
	public function getStderr():TDPipe;
	
	/**
	 * Return the stdin pipe for this process. 
	 * 
	 * @return	Process.Pipe 
	 */
	public function getStdin():TDPipe;
	
	/**
	 * Return the stdout pipe for this process. 
	 * 
	 * @return	Process.Pipe 
	 */
	public function getStdout():TDPipe;
	
	/**
	 * Return true if this process is running and false otherwise. 
	 * 
	 * @return	Boolean
	 */
	public function isRunning():Bool;
	
	/**
	 * Kill this process (SIGINT in Unix, TerminateProcess in Windows) 
	 * 
	 * @return	String
	 */
	public function kill():String;
	
	/**
	 * Launch this process asynchronously (not waiting for it's exit) 
	 * 
	 * @return	String
	 */
	public function launch():String;
	
	/**
	 * Send a signal (e.g. Process.SIGHUP) to this Process NOTE: this method does nothing in Windows 
	 * 
	 * @param	signal							-		The name of the signal to send.
	 * @return	String
	 */
	public function sendSignal(signal:Dynamic):String;
	
	/**
	 * Set an environment variable for this process 
	 * 
	 * @param	key								-		an environment key
	 * @param	value								-		the value
	 * @return	String
	 */
	public function setEnvironment(key:String, value:String):String;
	
	/**
	 * Set an onExit event handler for this process 
	 * 
	 * @param	onExit							-		a function
	 * @return	String
	 */
	public function setOnExit(onExit:Dynamic):String;
	
	/**
	 * Set an onRead event handler for this process stdout and stderr. This handler will take one argument 
	 * which is the event for this output. To retrieve event data, simply access event.data. 
	 * 
	 * @param	onRead							-		a handler that is passed an event, with a "data" Blob full of data read from the pipe
	 * @return	String
	 */
	public function setOnRead(onRead:Dynamic):String;
	
	/**
	 * Set the callback to invoke every time a line of input is received from the process. This callback will take
	 * one argument, which will be the line of output. 
	 * 
	 * @param	fn									-		a callback that is called with every line of output received from this process
	 * @return	String
	 */
	public function setOnReadLine(fn:Dynamic):String;
	
	/**
	 * Terminate this process (SIGTERM in Unix, TerminateProcess in Windows)
	 * 
	 * @return	String
	 */
	public function terminate():String;
	
	/**
	 * Get a string representation of this process. 
	 * 
	 * @return	String
	 */
	public function toString():String;
	
}