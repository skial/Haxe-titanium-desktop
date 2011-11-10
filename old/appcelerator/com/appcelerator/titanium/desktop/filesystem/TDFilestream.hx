/**
 * ...
 * @author Skial Bainn
 */

package com.appcelerator.titanium.desktop.filesystem;
import com.appcelerator.titanium.desktop.TDBlob;

@:native('Titanium.Filesystem.Filestream')
extern class TDFilestream {
	public function new():Void {}
	
	// METHODS
	
	/**
	 * Close this Filsystem.Filstream. Return true if the stream closed without any problems and false otherwise. 
	 * 
	 * @return	Boolean
	 */
	public function close():Bool;
	
	/**
	 * Return true if this Fileystem.Filestream is open and false otherwise. 
	 * 
	 * @return	Boolean
	 */
	public function isOpen():Bool;
	
	/**
	 * Open this Filesystem.Filestream. Return true if the operation is successful or false otherwise. 
	 * 
	 * @param	?mode						-		(optional) The mode to use for opening this Filesystem.Filestream. This is either
	 * 												Filesystem.MODE_READ or Filesystem.MODE_WRITE. If not supplied the stream 
	 * 												will be open in MODE_READ. 
	 * @param	?binary					-		(optional) Whether or not to open this stream in binary mode. If not supplied this 
	 * 												will be false.
	 * @param	?append					-		(optional) Whether or not to open this stream in append mode. If not supplied this 
	 * 												will be false.
	 * @return	Boolean
	 */
	public function open(?mode:Float, ?binary:Bool, ?append:Bool):Bool;
	
	/**
	 * Read an entire Filesystem.Filestream into a Blob object and return it. This method will throw an 
	 * exception if the operation fails. 
	 * 
	 * @return	Blob
	 */
	public function read():TDBlob;
	
	/**
	 * Reads one line from this Filesystem.Filestream. The stream must be open before using this method (or 
	 * an exception will be thrown). Each call will return a Blob object until the end of the stream, when null will 
	 * be returned. 
	 * 
	 * @return	Blob | null
	 */
	public function readLine():Dynamic;
	
	/**
	 * Return true if this Filesystem.Filestream is ready for IO operations or false otherwise. 
	 * 
	 * @return	Boolean
	 */
	public function ready():Bool;
	
	/**
	 * Writes a line to this Filesystem.Filestream. Return true if this operation succeeds and false otherwise. 
	 * 
	 * @param	data						-		The data to write to this Filesystem.Filestream.
	 * @return	Boolean
	 */
	public function write(data:Dynamic):Bool;
	
	/**
	 * Writes a line to this Filesystem.Filestream. The data will be followed by the platform dependent line-
	 * ending sequence. Return true if this operation succeeds and false otherwise. 
	 * 
	 * @param	data						-		The data to write to this Filesystem.Filestream.
	 * @return	Boolean
	 */
	public function writeLine(data:Dynamic):Bool;
	
	// PROPERTIES
	
	/**
	 * A constant representing append mode for file access.
	 */
	public var MODE_APPEND:Float;
	
	/**
	 * A constant representing read mode for file access.
	 */
	public var MODE_READ:Float;
	
	/**
	 * A constant representing write mode for file access.
	 */
	public var MODE_WRITE:String;
	
}