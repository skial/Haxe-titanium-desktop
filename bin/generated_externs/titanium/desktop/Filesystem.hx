package titanium.desktop;
import titanium.desktop.filesystem.AsyncCopy;
import titanium.desktop.filesystem.File;
import titanium.desktop.filesystem.Filestream;
/**
 * A module for accessing the Filesystem.
 * @since	0.2.0
 */
@:native("Titanium.Filesystem")
extern class Filesystem {

	/**
	 * A constant representing append mode for file access.
	 * @since	0.3.0
	 */
	public static var MODE_APPEND:Float;

	/**
	 * A constant representing read mode for file access.
	 * @since	0.3.0
	 */
	public static var MODE_READ:Float;

	/**
	 * A constant representing write mode for file access.
	 * @since	0.3.0
	 */
	public static var MODE_WRITE:Float;

	/**
	 * Executes an asynchronous copy operation and returns an AsyncCopy object.
	 * @param	paths	The source paths to include in the copy operation.
	 * @param	destination	A path or a File object representing the destination directory of the asynchronous copy.
	 * @param	callback	Callback invoked after every successful file copy. Filesystem.AsyncCopy
	 * will pass this callback two arguments, the first will be the index
	 * in the original list of source arguments, the second will be the total
	 * number of files in the list.
	 * 
	 * @return	titanium.desktop.filesystem.AsyncCopy
	 * @since	0.2.0
	 * @example	<pre><code>
		    var parent = Titanium.Filesystem.getApplicationDataDirectory();
		
		    var target = Titanium.Filesystem.getFile(parent, "subdir");
		    if (!target.exists())
		        target.createDirectory();
		
		    Titanium.Filesystem.asyncCopy([
		        Titanium.Filesystem.getFile(parent, "one.txt"),
		        Titanium.Filesystem.getFile(parent, "two.txt"),
		        Titanium.Filesystem.getFile(parent, "three.txt")],
		    target,
		    function(index, total)
		    {
		        // Even if one of the original array was a directory,
		        // the index will only advance for every member of the
		        // original array.
		        alert("Copied " + index + "of " + total + "files.");
		    });
		</code></pre>
		
	 */
	@:overload(function(paths:Array<String>, destination:titanium.desktop.filesystem.File, _callback:Dynamic):titanium.desktop.filesystem.AsyncCopy{})
	@:overload(function(paths:titanium.desktop.filesystem.File, destination:String, _callback:Dynamic):titanium.desktop.filesystem.AsyncCopy{})
	@:overload(function(paths:String, destination:String, _callback:Dynamic):titanium.desktop.filesystem.AsyncCopy{})
	public static function asyncCopy(paths:Array<String>, destination:String, _callback:Dynamic):titanium.desktop.filesystem.AsyncCopy;

	/**
	 * Create a temporary directory. This directory is guaranteed to be
	 * writable. If it still exists when the application exits, it
	 * will be deleted.
	 * @return	titanium.desktop.filesystem.File
	 * @since	0.8.0
	 */
	public static function createTempDirectory():titanium.desktop.filesystem.File;

	/**
	 * Create an temporary file. This file is guaranteed to be
	 * writable. If it still exists when the application exits, it
	 * will be deleted.
	 * @return	titanium.desktop.filesystem.File
	 * @since	0.8.0
	 */
	public static function createTempFile():titanium.desktop.filesystem.File;

	/**
	 * Return the data directory of the application. The data directory is per-user
	 * directory for storing application data. It is guaranteed to be writable and
	 * stable between releases.
	 * @return	titanium.desktop.filesystem.File
	 * @since	0.8.0
	 */
	public static function getApplicationDataDirectory():titanium.desktop.filesystem.File;

	/**
	 * Return the directory containing the application. The application directory
	 * may contain the application contents directory (OS X) or be the application
	 * contents directory (Windows and Linux). The application directory may not
	 * be writable and applications should not attempt to write to it.
	 * @return	titanium.desktop.filesystem.File
	 * @since	0.8.0
	 */
	public static function getApplicationDirectory():titanium.desktop.filesystem.File;

	/**
	 * Return the Desktop directory for the current user. OS X and Windows will
	 * always have a valid Desktop directory. Some Linux systems may not have one,
	 * in which case the home directory will be returned.
	 * @return	titanium.desktop.filesystem.File
	 * @since	0.8.0
	 */
	public static function getDesktopDirectory():titanium.desktop.filesystem.File;

	/**
	 * Return the documents directory for the current user. OS X and Windows will
	 * always have a valid Documents directory. Some Linux systems may not have one,
	 * in which case the home directory will be returned.
	 * @return	titanium.desktop.filesystem.File
	 * @since	0.8.0
	 */
	public static function getDocumentsDirectory():titanium.desktop.filesystem.File;

	/**
	 * Create a Filesystem.File object given a variable-length argument list
	 * of Filesystem.File or a path strings. The list will be joined together
	 * to form one long path string.
	 * @param	base	The base to this file. This may be a file or directory.
	 * @param	...	(optional) A variable length argument list of Files or paths that are joined to the base in an platform-specific way.
	 * @return	titanium.desktop.filesystem.File
	 * @since	0.8.0
	 * @example	<pre><code>
		    var sampleContents = "This is the contents of a sample file called sample.txt";
		
		    // Instead of building paths manually like so and making sure we use the proper
		    // Separator, we can pass multiple arguments to getFile and allow Titanium to do
		    // the work
		    // var sep = Titanium.Filesystem.getSeparator();
		    // var mySampleFile = Titanium.Filesystem.getFile(homeDir + sep + 'sample.txt');
		    var homeDir = Titanium.Filesystem.getUserDirectory();
		    var mySampleFile = Titanium.Filesystem.getFile(homeDir, 'sample.txt');
		
		    if (mySampleFile.exists()) {
		        alert('A file called sample.txt already exists in your home directory.');
		        alert(mySampleFile.read());
		    } else {
		        mySampleFile.write("These is the contents of a sample file called sample.txt");
		        alert("Created sample.txt");
		    }
		</code></pre>
		
	 */
	@:overload(function(base:titanium.desktop.filesystem.File, ?arg:titanium.desktop.filesystem.File):titanium.desktop.filesystem.File{})
	@:overload(function(base:String, ?arg:String):titanium.desktop.filesystem.File{})
	public static function getFile(base:titanium.desktop.filesystem.File, ?arg:String):titanium.desktop.filesystem.File;

	/**
	 * Create a Filesystem.Filestream object given a Filesystem.File or a path. 
	 * Filesystem.Filestream is the preferred way of writing to files.
	 * @return	titanium.desktop.filesystem.Filestream
	 * @since	0.8.0
	 */
	public static function getFileStream():titanium.desktop.filesystem.Filestream;

	/**
	 * Return the line ending most commonly used by the current operating system.
	 * This is useful for writing files with the platform compatibility in mind.
	 * File.Filestream.writeLine will use this value when completing lines.
	 * @return	String
	 * @since	0.8.0
	 */
	public static function getLineEnding():String;

	/**
	 * Return the directory commonly used for storing applications on this
	 * platform. On Linux systems, there can be many places for storing
	 * executables, so it is not recommended using this value to locate them.
	 * @return	titanium.desktop.filesystem.File
	 * @since	0.8.0
	 */
	public static function getProgramsDirectory():titanium.desktop.filesystem.File;

	/**
	 * Return the path to this application's resources directory. This diretory
	 * is the 'Resources' subdirectory of the application contents directory.
	 * The application directory may not be writable and applications should
	 * not attempt to write to it.
	 * @return	titanium.desktop.filesystem.File
	 * @since	0.8.0
	 */
	public static function getResourcesDirectory():titanium.desktop.filesystem.File;

	/**
	 * Return the system root directories. On Unix systems there is at
	 * most one root directory '/' while on Windows active drive letters
	 * are considered system root directories.
	 * @return	Array<File>
	 * @since	0.8.0
	 */
	public static function getRootDirectories():Array<File>;

	/**
	 * Return the directory of the current Titanium runtime files.
	 * @return	titanium.desktop.filesystem.File
	 * @since	0.8.0
	 */
	public static function getRuntimeHomeDirectory():titanium.desktop.filesystem.File;

	/**
	 * Return the path separator used by the operating system.
	 * @return	String
	 * @since	0.8.0
	 */
	public static function getSeparator():String;

	/**
	 * Return the home directory of the current user.
	 * @return	titanium.desktop.filesystem.File
	 * @since	0.8.0
	 */
	public static function getUserDirectory():titanium.desktop.filesystem.File;
}