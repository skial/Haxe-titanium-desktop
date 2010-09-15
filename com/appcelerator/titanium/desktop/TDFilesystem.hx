/**
 * ...
 * @author Skial Bainn
 */

package com.appcelerator.titanium.desktop;

import com.appcelerator.titanium.desktop.filesystem.TDAsyncCopy;
import com.appcelerator.titanium.desktop.filesystem.TDFile;
import com.appcelerator.titanium.desktop.filesystem.TDFilestream;

@:native('Titanium.Filesystem')
extern class TDFilesystem {
	public function new():Void {}
	
	// OBJECTS
	
	/**
	 * A representation of an asynchronous copy operation created via calling Filesystem.asyncCopy. 
	 */
	public var AsyncCopy:TDAsyncCopy;
	
	/**
	 * An object which represents a path to a file or directory. A Filesystem.File is not 
	 * guaranteed to be a valid path.
	 */
	public var File:TDFile;
	
	/**
	 * A object for reading and writing data to files.
	 */
	public var Filestream:TDFilestream;
	
	// FUNCTIONS
	
	/**
	 * Executes an asynchronous copy operation and returns an AsyncCopy object. 
	 * 
	 * @param	paths							-		The source paths to include in the copy operation.
	 * @param	destination					-		A path or a File object representing the destination 
	 * 													directory of the asynchronous copy.
	 * @param	handler						-		Callback invoked after every successful file copy. 
	 * 													Filesystem.AsyncCopy will pass this callback two 
	 * 													arguments, the first will be the index in the original list of
	 * 													source arguments, the second will be the total number of 
	 * 													files in the list. 
	 * @return	Filesystem.AsyncCopy 
	 */
	public function asyncCopy(paths:Dynamic, destination:Dynamic, handler:Dynamic):TDAsyncCopy;
	
	/**
	 * Create a temporary directory. This directory is guaranteed to be writable. If it still exists when the
	 * application exits, it will be deleted. 
	 * 
	 * @return	Filesystem.File 
	 */
	public function createTempDirectory():TDFile;
	
	/**
	 * Create an temporary file. This file is guaranteed to be writable. If it still exists when the application 
	 * exits, it will be deleted. 
	 * 
	 * @return	Filesystem.File 
	 */
	public function createTempFile():TDFile;
	
	/**
	 * Return the data directory of the application. The data directory is per-user directory for storing 
	 * application data. It is guaranteed to be writable and stable between releases. 
	 * 
	 * @return	Filesystem.File 
	 */
	public function getApplicationDataDirectory():TDFile;
	
	/**
	 * Return the directory containing the application. The application directory may contain the application 
	 * contents directory (OS X) or be the application contents directory (Windows and Linux). The application 
	 * directory may not be writable and applications should not attempt to write to it. 
	 * 
	 * @return	Filesystem.File 
	 */
	public function getApplicationDirectory():TDFile;
	
	/**
	 * Return the Desktop directory for the current user. OS X and Windows will always have a valid Desktop
	 * directory. Some Linux systems may not have one, in which case the home directory will be returned. 
	 * 
	 * @return	Filesystem.File 
	 */
	public function getDesktopDirectory():TDFile;
	
	/**
	 * Return the documents directory for the current user. OS X and Windows will always have a valid 
	 * Documents directory. Some Linux systems may not have one, in which case the home directory will be 
	 * returned. 
	 * 
	 * @return	Filesystem.File 
	 */
	public function getDocumentDirectory():TDFile;
	
	/**
	 * Create a Filesystem.File object given a variable-length argument list of Filesystem.File or a path strings.
	 * The list will be joined together to form one long path string. 
	 * 
	 * @param	base							-		The base to this file. This may be a file or directory.
	 * @param	?variables					-		(optional) A variable length argument list of Files or paths that are 
	 * 													joined to the base in an platform-specific way.
	 * @return	Filesystem.File 
	 */
	public function getFile(base:Dynamic, ?variables:Dynamic):TDFile;
	
	/**
	 * Create a Filesystem.Filestream object given a Filesystem.File or a path. Filesystem.Filestream is the 
	 * preferred way of writing to files. 
	 * 
	 * @param	file							-		A file or path used for the construction of this Filesystem.Filestream.
	 * @return	Filesystem.Filestream 
	 */
	public function getFileStream(file:Dynamic):TDFilestream;
	
	/**
	 * Return the line ending most commonly used by the current operating system. This is useful for writing 
	 * files with the platform compatibility in mind. File.Filestream.writeLine will use this value when 
	 * completing lines. 
	 * 
	 * @return	String
	 */
	public function getLineEnding():String;
	
	/**
	 * Return the directory commonly used for storing applications on this platform. On Linux systems, there 
	 * can be many places for storing executables, so it is not recommended using this value to locate them. 
	 * 
	 * @return	Filesystem.File 
	 */
	public function getProgramsDirectory():TDFile;
	
	/**
	 * Return the path to this application's resources directory. This diretory is the 'Resources' subdirectory of 
	 * the application contents directory. 
	 * 
	 * @return	Filesystem.File 
	 */
	public function getResourcesDirectory():TDFile;
	
	/**
	 * Return the system root directories. On Unix systems there is at most one root directory '/' while on 
	 * Windows active drive letters are considered system root directories. 
	 * 
	 * @return	Array
	 */
	public function getRootDirectories():Array<Dynamic>;
	
	/**
	 * Return the directory of the current Titanium runtime files. 
	 * 
	 * @return	Filesystem.File 
	 */
	public function getRuntimeHomeDirectory():TDFile;
	
	/**
	 * Return the path separator used by the operating system. 
	 * 
	 * @return	String
	 */
	public function getSeparator():String;
	
	/**
	 * Return the home directory of the current user. 
	 * 
	 * @return	Filesystem.File 
	 */
	public function getUserDirectory():TDFile;
	
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
	public var MODE_WRITE:Float;
	
}