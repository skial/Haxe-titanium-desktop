package titanium.desktop;
/**
 * A object for reading and writing data to files.
 * @since	0.2.0
 */
@:native("Titanium.Filesystem.Filestream")
extern class Filestream {

	/**
	 * A constant representing append mode for file access.
	 * @since	0.4.0
	 */
	public static var MODE_APPEND:Float;

	/**
	 * A constant representing read mode for file access.
	 * @since	0.4.0
	 */
	public static var MODE_READ:Float;

	/**
	 * A constant representing write mode for file access.
	 * @since	0.4.0
	 */
	public static var MODE_WRITE:String;

	/**
	 * Close this Filsystem.Filstream. Return true if the stream closed
	 * without any problems and false otherwise.
	 * @return	Bool
	 * @since	0.2.0
	 */
	public static function close():Bool;

	/**
	 * Return true if this Fileystem.Filestream is open and false otherwise.
	 * @return	Bool
	 * @since	0.4.0
	 */
	public static function isOpen():Bool;

	/**
	 * Open this Filesystem.Filestream. Return true if the operation is
	 * successful or false otherwise.
	 * @param	mode	(optional) The mode to use for opening this Filesystem.Filestream. This
	 * is either Filesystem.MODE_READ or Filesystem.MODE_WRITE. If not supplied
	 * the stream will be open in MODE_READ.
	 * 
	 * @param	binary	(optional) Whether or not to open this stream in binary mode. If not supplied this will be false.
	 * @param	append	(optional) Whether or not to open this stream in append mode. If not supplied this will be false.
	 * @return	Bool
	 * @since	0.2.0
	 */
	public static function open(?mode:Float, ?binary:Bool, ?append:Bool):Bool;

	/**
	 * Read data from a Filesystem.Filestream into a Bytes object
	 * and return it. This method will throw an exception if the
	 * operation fails.
	 * @param	size	Number of bytes to read from the file.
	 * @return	Bytes
	 * @since	0.2.0
	 */
	public static function read(size:Int):Bytes;

	/**
	 * Reads one line from this Filesystem.Filestream. The stream must
	 * be open before using this method (or an exception will be thrown).
	 * Each call will return a Bytes object until the end of the stream,
	 * when null will be returned.
	 * @return	Bytes
	 * @since	0.2.0
	 * @example	<pre><code>
		    var fileStream = Titanium.Filesystem.getFileStream(filename);
		    fileStream.open(Titanium.Filesystem.MODE_READ);
		    var line = file.readLine();
		    while(line != null) {
		        // do something with the line
		        line = file.readLine();
		    }
		    fileStream.close();
		</code></pre>
		
	 */
	public static function readLine():Bytes;

	/**
	 * Return true if this Filesystem.Filestream is ready for IO operations or false otherwise.
	 * @return	Bool
	 * @since	0.4.0
	 */
	public static function ready():Bool;

	/**
	 * Set the current read/write position with in the file.
	 * @param	offset	new position relative to the absolute position specifed by the dir parameter
	 * @param	dir	specifies an absolute position in the file where offset will be applied
	 * @return	Void
	 * @since	1.1.0
	 * @example	<pre><code>
		    var file = Titanium.Filesystem.getFile(...);
		    var istream = file.open(Titanium.Filesystem.MODE_READ);
		
		    // Seek 10 bytes forward from current position
		    istream.seek(10, Titanium.Filesystem.SEEK_CURRENT);
		</code></pre>
		
	 */
	public static function seek(offset:Int, dir:Int):Void;

	/**
	 * Returns current position in file relative to the beginning
	 * @return	Int
	 * @since	1.1.0
	 * @example	<pre><code>
		    var file = Titanium.Filesystem.getFile(...);
		    var istream = file.open(Titanium.Filesystem.MODE_READ);
		
		    var currentPosition = istream.tell();
		</code></pre>
		
	 */
	public static function tell():Int;

	/**
	 * Writes a line to this Filesystem.Filestream. Return true if this
	 * operation succeeds and false otherwise.
	 * @param	data	The data to write to this Filesystem.Filestream.
	 * @return	Bool
	 * @since	0.2.0
	 */
	public static function write(data:Bytes):Bool;

	/**
	 * Writes a line to this Filesystem.Filestream. The data will be followed
	 * by the platform dependent line-ending sequence. Return true if this
	 * operation succeeds and false otherwise.
	 * @param	data	The data to write to this Filesystem.Filestream.
	 * @return	Bool
	 * @since	0.4.0
	 */
	public static function writeLine(data:Bytes):Bool;
}