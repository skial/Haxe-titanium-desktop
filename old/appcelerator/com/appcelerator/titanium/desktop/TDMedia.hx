/**
 * ...
 * @author Skial Bainn
 */

package com.appcelerator.titanium.desktop;

import com.appcelerator.titanium.desktop.media.TDSound;

@:native('Titanium.Media')
extern class TDMedia {
	public function new():Void {}
	
	// OBJECTS
	
	/**
	 * An object allowing for loading simple sounds and simple types of playback.
	 */
	public var Sound:TDSound;
	
	// FUNCTIONS
	
	/**
	 * Activate the system bell. Some systems may have disabled the system bell. 
	 * 
	 * @return	String
	 */
	public function beep():String;
	
	/**
	 * Factory method for Sound objects, created given a path or a URL to a sound file. The types of sound files
	 * that can be played depend on the codecs installed on the user's system. 
	 * 
	 * @param	path							-		The path or url to the sound file to play.
	 * @return	Media.Sound 
	 */
	public function createSound(path:String):TDSound;
	
}