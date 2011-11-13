package titanium;
import titanium.filesystem.AsyncCopy;
import titanium.filesystem.File;
import titanium.filesystem.Filestream;
/**
 * A module for accessing the Filesystem.
 * @since	0.2.0
 * @example	null
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
	public function new():Void;

	/**
	 * Executes an asynchronous copy operation and returns an AsyncCopy object.
	 * @param	paths	The source paths to include in the copy operation.
	 * @param	destination	A path or a File object representing the destination directory of the asynchronous copy.
	 * @param	callback	Callback invoked after every successful file copy. Filesystem.AsyncCopy
	will pass this callback two arguments, the first will be the index
	in the original list of source arguments, the second will be the total
	number of files in the list.
	
	 * @return	AsyncCopy
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
	public var asyncCopy:Array<File>->File->Dynamic->AsyncCopy;

	/**
	 * Create a temporary directory. This directory is guaranteed to be
	writable. If it still exists when the application exits, it
	will be deleted.
	 * @return	File
	 * @since	0.8.0
	*/
	public function createTempDirectory():File;

	/**
	 * Create an temporary file. This file is guaranteed to be
	writable. If it still exists when the application exits, it
	will be deleted.
	 * @return	File
	 * @since	0.8.0
	*/
	public function createTempFile():File;

	/**
	 * Return the data directory of the application. The data directory is per-user
	directory for storing application data. It is guaranteed to be writable and
	stable between releases.
	 * @return	File
	 * @since	0.8.0
	*/
	public function getApplicationDataDirectory():File;

	/**
	 * Return the directory containing the application. The application directory
	may contain the application contents directory (OS X) or be the application
	contents directory (Windows and Linux). The application directory may not
	be writable and applications should not attempt to write to it.
	 * @return	File
	 * @since	0.8.0
	*/
	public function getApplicationDirectory():File;

	/**
	 * Return the Desktop directory for the current user. OS X and Windows will
	always have a valid Desktop directory. Some Linux systems may not have one,
	in which case the home directory will be returned.
	 * @return	File
	 * @since	0.8.0
	*/
	public function getDesktopDirectory():File;

	/**
	 * Return the documents directory for the current user. OS X and Windows will
	always have a valid Documents directory. Some Linux systems may not have one,
	in which case the home directory will be returned.
	 * @return	File
	 * @since	0.8.0
	*/
	public function getDocumentsDirectory():File;

	/**
	 * Create a Filesystem.File object given a variable-length argument list
	of Filesystem.File or a path strings. The list will be joined together
	to form one long path string.
	 * @param	base	The base to this file. This may be a file or directory.
	 * @param	...	(optional) A variable length argument list of Files or paths that are joined to the base in an platform-specific way.
	 * @return	File
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
	public function getFile(base:File, arg:File):File;

	/**
	 * Create a Filesystem.Filestream object given a Filesystem.File or a path. 
	Filesystem.Filestream is the preferred way of writing to files.
	 * @return	Filestream
	 * @since	0.8.0
	*/
	public function getFileStream():Filestream;

	/**
	 * Return the line ending most commonly used by the current operating system.
	This is useful for writing files with the platform compatibility in mind.
	File.Filestream.writeLine will use this value when completing lines.
	 * @return	String
	 * @since	0.8.0
	*/
	public function getLineEnding():String;

	/**
	 * Return the directory commonly used for storing applications on this
	platform. On Linux systems, there can be many places for storing
	executables, so it is not recommended using this value to locate them.
	 * @return	File
	 * @since	0.8.0
	*/
	public function getProgramsDirectory():File;

	/**
	 * Return the path to this application's resources directory. This diretory
	is the 'Resources' subdirectory of the application contents directory.
	The application directory may not be writable and applications should
	not attempt to write to it.
	 * @return	File
	 * @since	0.8.0
	*/
	public function getResourcesDirectory():File;

	/**
	 * Return the system root directories. On Unix systems there is at
	most one root directory '/' while on Windows active drive letters
	are considered system root directories.
	 * @return	Array<File>
	 * @since	0.8.0
	*/
	public function getRootDirectories():Array<File>;

	/**
	 * Return the directory of the current Titanium runtime files.
	 * @return	File
	 * @since	0.8.0
	*/
	public function getRuntimeHomeDirectory():File;

	/**
	 * Return the path separator used by the operating system.
	 * @return	String
	 * @since	0.8.0
	*/
	public function getSeparator():String;

	/**
	 * Return the home directory of the current user.
	 * @return	File
	 * @since	0.8.0
	*/
	public function getUserDirectory():File;
}