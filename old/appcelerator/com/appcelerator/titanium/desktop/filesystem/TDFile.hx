/**
 * ...
 * @author Skial Bainn
 */

package com.appcelerator.titanium.desktop.filesystem;
import com.appcelerator.titanium.desktop.TDBlob;

@:native('Titanium.Filesystem.File')
extern class TDFile {
	public function new():Void {}
	
	// METHODS
	
	/**
	 * Copies a file to the specified location. If the target is a directory the file will be written to that directory.
	 * If the target is a file, the file will be written to that file. 
	 * 
	 * @param	target						-		The target of this move operation.
	 */
	public function copy(target:Dynamic):Void;
	
	/**
	 * Create a new directory at this File object's path. If the directory already exists, this method will do 
	 * nothing. This method will return true if the directory was created or false if it was not. 
	 * 
	 * @return	Boolean
	 */
	public function createDirectory():Bool;
	
	/**
	 * Creates a shortcut to a file or directory at this Filesystem.File's path. On Windows this will create a 
	 * Win32 style shortcut. On Linux and OS X this will create a symlink. If the operation is successful this 
	 * method will return true and false otherwise. 
	 * 
	 * @param	target						-		The target of this shortcut.
	 * @return	Boolean
	 */
	public function createShortcut(target:Dynamic):Bool;
	
	/**
	 * Return the timestamp for when this file or directory was created. The return value of this function will be
	 * microseconds since the epoch at the time this file was created. 
	 * 
	 * @return	Float
	 */
	public function createTimestamp():Float;
	
	/**
	 * Remove the file or directory specified by this Filesystem.File. Return true if removal succeeded and false
	 * otherwise. 
	 * 
	 * @param	recursive						-		If this Filesystem.File is a directory
	 * @return
	 */
	public function deleteDirectory(recursive:Bool):Bool;
	
	/**
	 * Remove the file or directory specified by this Filesystem.File, this method never removes directories 
	 * recursively. Return true if removal succeeded and false otherwise. 
	 * 
	 * @return	String
	 */
	public function deleteFile():String;
	
	/**
	 * Return true if a file or directory exists at the path specified by this Filesystem.File. 
	 * 
	 * @return	Boolean
	 */
	public function exists():Bool;
	
	/**
	 * Return the extension of this Filesystem.File. 
	 * 
	 * @return	String
	 */
	public function extension():String;
	
	/**
	 * If this Filesystem.File specifies the path to a directory, return an Array of items inside this directory. If 
	 * this path does not exist or is not a directory, return null. 
	 * 
	 * @return	Array
	 */
	public function getDirectoryListing():Array<Dynamic>;
	
	/**
	 * Return true if the path specified by this Filesystem.File refers to a directory or false otherwise. 
	 * 
	 * @return	Boolean
	 */
	public function isDirectory():Bool;
	
	/**
	 * Return true if the directory or file at the path specified by this Filesystem.File object has the executable 
	 * bit set. If the file does not exists, this method will return false. 
	 * 
	 * @return	Boolean
	 */
	public function isExecutable():Bool;
	
	/**
	 * Return true if the path specified by this Filesystem.File refers to a file or false otherwise. 
	 * 
	 * @return	Boolean
	 */
	public function isFile():Bool;
	
	/**
	 * Return true if the path specified by this Filesystem.File refers to a hidden file. On Windows this means
	 * that the file has the hidden attribute and on Linux and OS X this means that the basename of this path 
	 * begins with a period. 
	 * 
	 * @return	Boolean
	 */
	public function isHidden():Bool;
	
	/**
	 * Return true if the path specified by this Filesystem.File refers to a read-only file. 
	 * 
	 * @return	String
	 */
	public function isReadonly():String;
	
	/**
	 * Return true if the path specified by this Filesystem.File refers to a symbolic link. 
	 * 
	 * @return	Boolean
	 */
	public function isSymbolicLink():Bool;
	
	/**
	 * Return true if the path specified by this Filesystem.File refers to a writable file and false otherwise. 
	 * 
	 * @return	Boolean
	 */
	public function isWritable():Bool;
	
	/**
	 * Return the timestamp for when this file or directory was modified. The return value of this function will 
	 * be microseconds since the epoch at the last time this file was modified. 
	 * 
	 * @return	Float
	 */
	public function modificationTimestamp():Float;
	
	/**
	 * Moves to the specified location. If the target is a directory the file will be written to that directory. If the
	 * target is a file, the file will be written to that file. 
	 * 
	 * @param	target							-		The target of this move operation.
	 * @return	String
	 */
	public function move(target:Dynamic):String;
	
	/**
	 * Return the full path of this File.Filesystem object. 
	 * 
	 * @return	String
	 */
	public function nativePath():String;
	
	/**
	 * Return the parent directory of this File.Filesystem object. 
	 * 
	 * @return	Filesystem.File 
	 */
	public function parent():TDFile;
	
	/**
	 * Return the entire contents of a file as a Blob object. 
	 * 
	 * @return	Blob 
	 */
	public function read():TDBlob;
	
	/**
	 * Return one line from the file specified by this Filesystem.File object. This method will return null when it 
	 * finishes reading the file or if it encounters and error. The file object will remain in an open state until 
	 * the entire file has been read via Filestream.File.readLine. It is recommended that new applications use 
	 * Filesystem.Filestream to read files instead, which allow for explicit control over the native file handles.
	 * 
	 * @return	String
	 */
	public function readLine():String;
	
	/**
	 * Renames a file to the given path. 
	 * 
	 * @param	newPath							-		The new path of the file
	 * @return	String
	 */
	public function rename(newPath:String):String;
	
	/**
	 * Resolves a given relative path against the path specified by this Filesystem.File object. If the given path 
	 * is absolute, the absolute path is returned. 
	 * 
	 * @param	subPath							-		The subPath to resolve against this Filesystem.File object.
	 * @return	Filesystem.File 
	 */
	public function resolve(subPath:String):TDFile;
	
	/**
	 * Set the execute bit on the file or directory at the path specified by this Filesystem.File object. Return 
	 * true if the file or directory at this path is executable after the operation completes. 
	 * 
	 * @return	Boolean
	 */
	public function setExecutable():Bool;
	
	/**
	 * Remove the wrtiable bit and ensure there is a readable bit on the file or directory at the path specified 
	 * by this Filesystem.File object. Return true if the file or directory at this path is read-only after the
	 * operation completes. 
	 * 
	 * @return	Boolean
	 */
	public function setReadonly():Bool;
	
	/**
	 * Set the write bit on the file or directory at the path specified by this Filesystem.File object. Return true 
	 * if the file or directory at this path is writable after the operation completes. 
	 * 
	 * @return	Boolean
	 */
	public function setWritable():Bool;
	
	/**
	 * Return the size of the file in number of bytes. 
	 * 
	 * @return	Float
	 */
	public function size():Float;
	
	/**
	 * Return the space available on the filesystem containing the path specified by this Filesystem.File object
	 * in number of bytes.. 
	 * 
	 * @return	Float
	 */
	public function spaceAvailable():Float;
	
	/**
	 * Return the path of this Filesystem.File object as a String. 
	 * 
	 * @return	String
	 */
	public function toString():String;
	
	/**
	 * If this file is a zip file, unzip it into the given destination directory. Return true if the operation was
	 * successful or false otherwise. This operation will block the main thread. 
	 * 
	 * @param	destination						-		Directory to unzip the file to.
	 * @return	Boolean
	 */
	public function unzip(destination:Dynamic):Bool;
	
	/**
	 * Write data to the file at the path specified by this Filesystem.File object. Returns true if any data was 
	 * written to the file or false otherwise. 
	 * 
	 * @param	data								-		The data to write to this Filesystem.File.
	 * @return	String
	 */
	public function write(data:Dynamic):String;
	
}