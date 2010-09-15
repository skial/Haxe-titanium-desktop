/**
 * ...
 * @author Skial Bainn
 */

package com.appcelerator.titanium.desktop.filesystem;

@:native('Titanium.Filesystem.AsyncCopy')
extern class TDAsyncCopy {
	public function new():Void {}
	
	// PROPERTIES
	
	/**
	 * True if this asynchronous copy operation is active, false otherwise.
	 */
	public var running:Bool;
	
}