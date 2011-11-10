/**
 * ...
 * @author Skial Bainn
 */

package com.appcelerator.titanium.desktop;

import com.appcelerator.titanium.desktop.worker.TDWorkerChild;

@:native('Titanium.Worker')
extern class TDWorker {
	public function new():Void {}
	
	// OBJECTS
	
	/**
	 * An object representing a Titanium Worker.
	 */
	public var Worker:TDWorkerChild;
	
	// FUNCTIONS
	
	/**
	 * Create a worker thread instance. 
	 * 
	 * @param	source									-		Either a JavaScript function (does not support closures)
	 * @return	Worker.Worker 
	 */
	public function createWorker(source:Dynamic):TDWorkerChild;
	
}