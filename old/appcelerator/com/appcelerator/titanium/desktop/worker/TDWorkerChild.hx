/**
 * ...
 * @author Skial Bainn
 */

package com.appcelerator.titanium.desktop.worker;

@:native('Titanium.Worker.Worker')
extern class TDWorkerChild {
	public function new():Void {}
	
	// METHODS
	
	/**
	 * Post a message (async) into the worker thread's queue to be handled by onmessage 
	 * 
	 * @param	data										-		Any JSON serializable type to pass to the child.
	 * @return	String
	 */
	public function postMessage(data:Dynamic):String;
	
	/**
	 * Start the worker thread 
	 * 
	 * @return	String
	 */
	public function start():String;
	
	/**
	 * Terminate the worker thread. The thread can be restarted with Worker.start() 
	 * 
	 * @return	String
	 */
	public function terminate():String;
	
}