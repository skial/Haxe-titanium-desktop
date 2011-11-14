package titanium.filesystem;
import titanium.filesystem.File;
import titanium.filesystem.Filestream;
/**
 * An object which represents a path to a file or directory. A Filesystem.File is not guaranteed to be a valid path.
 * @since	0.2.0
 */
@:native("Titanium.Filesystem.File")
extern class File {

	/**
	 * Copies a file to the specified location. If the target is a directory
	 * the file will be written to that directory. If the target is a file,
	 * the file will be written to that file.
	 * @param	target	The target of this move operation.
	 * @return	Void
	 * @since	0.2.0
	 */
	public static function copy(target:File):Void;

	/**
	 * Create a new directory at this File object's path. If the
	 * directory already exists, this method will do nothing. This
	 * method will return true if the directory was created or false
	 * if it was not.
	 * @return	Bool
	 * @since	0.2.0
	 */
	public static function createDirectory():Bool;

	/**
	 * Creates a shortcut to a file or directory at this Filesystem.File's
	 * path. On Windows this will create a Win32 style shortcut. On Linux
	 * and OS X this will create a symlink. If the operation is successful
	 * this method will return true and false otherwise.
	 * @param	target	The target of this shortcut.
	 * @return	Bool
	 * @since	0.2.0
	 */
	public static function createShortcut(target:File):Bool;

	/**
	 * Return the timestamp for when this file or directory was created.
	 * The return value of this function will be microseconds since the
	 * epoch at the time this file was created.
	 * @return	Float
	 * @since	0.2.0
	 */
	public static function createTimestamp():Float;

	/**
	 * Remove the file or directory specified by this Filesystem.File.
	 * Return true if removal succeeded and false otherwise.
	 * @param	recursive	If this Filesystem.File is a directory
	 * @return	Bool
	 * @since	0.2.0
	 */
	public static function deleteDirectory(recursive:Bool):Bool;

	/**
	 * Remove the file or directory specified by this Filesystem.File,
	 * this method never removes directories recursively.
	 * Return true if removal succeeded and false otherwise.
	 * @return	String
	 * @since	0.2.0
	 */
	public static function deleteFile():String;

	/**
	 * Return true if a file or directory exists at the path
	 * specified by this Filesystem.File.
	 * @return	Bool
	 * @since	0.2.0
	 */
	public static function exists():Bool;

	/**
	 * Return the extension of this Filesystem.File.
	 * @return	String
	 * @since	0.2.0
	 */
	public static function extension():String;

	/**
	 * If this Filesystem.File specifies the path to a directory,
	 * return an Array of items inside this directory. If this path
	 * does not exist or is not a directory, return null.
	 * @return	Array<File>
	 * @since	0.2.0
	 */
	public static function getDirectoryListing():Array<File>;

	/**
	 * Return true if the path specified by this Filesystem.File refers
	 * to a directory or false otherwise.
	 * @return	Bool
	 * @since	0.2.0
	 */
	public static function isDirectory():Bool;

	/**
	 * Return true if the directory or file at the path specified by
	 * this Filesystem.File object has the executable bit set. If the
	 * file does not exists, this method will return false.
	 * @return	Bool
	 * @since	0.2.0
	 */
	public static function isExecutable():Bool;

	/**
	 * Return true if the path specified by this Filesystem.File refers
	 * to a file or false otherwise.
	 * @return	Bool
	 * @since	0.2.0
	 */
	public static function isFile():Bool;

	/**
	 * Return true if the path specified by this Filesystem.File refers
	 * to a hidden file. On Windows this means that the file has the hidden
	 * attribute and on Linux and OS X this means that the basename of
	 * this path begins with a period.
	 * @return	Bool
	 * @since	0.2.0
	 */
	public static function isHidden():Bool;

	/**
	 * Return true if the path specified by this Filesystem.File refers
	 * to a read-only file.
	 * @return	String
	 * @since	0.2.0
	 */
	public static function isReadonly():String;

	/**
	 * Return true if the path specified by this Filesystem.File refers
	 * to a symbolic link.
	 * @return	Bool
	 * @since	0.2.0
	 */
	public static function isSymbolicLink():Bool;

	/**
	 * Return true if the path specified by this Filesystem.File refers
	 * to a writable file and false otherwise.
	 * @return	Bool
	 * @since	0.2.0
	 */
	public static function isWritable():Bool;

	/**
	 * Return the modification timestamp of a file or directory
	 * @return	Float
	 * @since	0.2.0
	 */
	public static function modificationTimestamp():Float;

	/**
	 * Moves to the specified location. If the target is a directory
	 * the file will be written to that directory. If the target is a file,
	 * the file will be written to that file.
	 * @param	target	The target of this move operation.
	 * @return	String
	 * @since	0.2.0
	 */
	public static function move(target:File):String;

	/**
	 * Return the full path of this File.Filesystem object.
	 * @return	String
	 * @since	0.2.0
	 */
	public static function nativePath():String;

	/**
	 * Create and open a Filestream for this File object.
	 * @param	mode	(optional) The mode to use for opening this Filesystem.File. This
	 * is either Filesystem.MODE_READ or Filesystem.MODE_WRITE. If not supplied
	 * the stream will be open in MODE_READ.
	 * 
	 * @param	binary	(optional) Whether or not to open this stream in binary mode. If not supplied this will be false.
	 * @param	append	(optional) Whether or not to open this stream in append mode. If not supplied this will be false.
	 * @return	Filestream
	 * @since	1.1.0
	 */
	public static function open(mode:Float, binary:Bool, append:Bool):Filestream;

	/**
	 * Return the parent directory of this File.Filesystem object.
	 * @return	File
	 * @since	0.2.0
	 */
	public static function parent():File;

	/**
	 * Return the entire contents of a file as a Bytes object.
	 * @return	Bytes
	 * @since	0.2.0
	 */
	public static function read():Bytes;

	/**
	 * Return one line from the file specified by this Filesystem.File object.
	 * This method will return null when it finishes reading the file or if
	 * it encounters and error. The file object will remain in an open state until
	 * the entire file has been read via Filestream.File.readLine. It is recommended
	 * that new applications use Filesystem.Filestream to read files instead, which
	 * allow for explicit control over the native file handles.
	 * @return	String
	 * @since	0.2.0
	 */
	public static function readLine():String;

	/**
	 * Renames a file to the given path.
	 * @param	newPath	The new path of the file
	 * @return	String
	 * @since	0.2.0
	 */
	public static function rename(newPath:String):String;

	/**
	 * Resolves a given relative path against the path specified by this
	 * Filesystem.File object. If the given path is absolute, the absolute
	 * path is returned.
	 * @param	subPath	The subPath to resolve against this Filesystem.File object.
	 * @return	File
	 * @since	0.2.0
	 */
	public static function resolve(subPath:String):File;

	/**
	 * Set the execute bit on the file or directory at the path specified
	 * by this Filesystem.File object. Return true if the file or directory
	 * at this path is executable after the operation completes.
	 * @return	Bool
	 * @since	0.2.0
	 */
	public static function setExecutable():Bool;

	/**
	 * Remove the wrtiable bit and ensure there is a readable bit on the file
	 * or directory at the path specified by this Filesystem.File object. Return
	 * true if the file or directory at this path is read-only after the operation
	 * completes.
	 * @return	Bool
	 * @since	0.2.0
	 */
	public static function setReadonly():Bool;

	/**
	 * Set the write bit on the file or directory at the path specified
	 * by this Filesystem.File object. Return true if the file or directory
	 * at this path is writable after the operation completes.
	 * @return	Bool
	 * @since	0.2.0
	 */
	public static function setWritable():Bool;

	/**
	 * Return the size of the file in number of bytes.
	 * @return	Float
	 * @since	0.2.0
	 */
	public static function size():Float;

	/**
	 * Return the space available on the filesystem containing the
	 * path specified by this Filesystem.File object in number of
	 * bytes..
	 * @return	Float
	 * @since	0.2.0
	 */
	public static function spaceAvailable():Float;

	/**
	 * Return the path of this Filesystem.File object as a String.
	 * @return	String
	 * @since	0.7.0
	 */
	public static function toString():String;

	/**
	 * Creates a new, empty file in an atomic operation.
	 * Returns true if the file was created or false if it already exists.
	 * @return	Bool
	 * @since	1.1.0
	 */
	public static function touch():Bool;

	/**
	 * If this file is a zip file, unzip it into the given destination directory.
	 * Return true if the operation was successful or false otherwise. This operation
	 * will block the main thread.
	 * @param	destination	Directory to unzip the file to.
	 * @return	Bool
	 * @since	0.3.0
	 */
	public static function unzip(destination:File):Bool;

	/**
	 * Write data to the file at the path specified by this Filesystem.File
	 * object. Returns true if any data was written to the file or false
	 * otherwise.
	 * @param	data	The data to write to this Filesystem.File.
	 * @return	String
	 * @since	0.2.0
	 */
	public static function write(data:Bytes):String;
}