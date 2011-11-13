package titanium;
import titanium.filesystem.File;
/**
 * A module for dealing with encoding and decoding.
 * @since	0.7.0
 * @example	null
*/
@:native("Titanium.Codec")
extern class Codec {

	/**
	 * Constant specifying the Adler-32 checksum algorithm.
	 * @since	0.7.0
	*/
	public var ADLER32:Float;

	/**
	 * Constant specifying the CRC32 checksum algorithm.
	 * @since	0.7.0
	*/
	public var CRC32:String;

	/**
	 * Constant specifying the MD2 hash algorithm.
	 * @since	0.7.0
	*/
	public var MD2:String;

	/**
	 * Constant specifying the MD4 hash algorithm.
	 * @since	0.7.0
	*/
	public var MD4:String;

	/**
	 * Constant specifying the MD5 hash algorithm.
	 * @since	0.7.0
	*/
	public var MD5:String;

	/**
	 * Constant specifying the SHA1 hash algorithm.
	 * @since	0.7.0
	*/
	public var SHA1:String;
	public function new():Void;

	/**
	 * Compute the checksum of the given String with the given checksum algorithm.
	 * @param	data	The string to compute the checksum on. The checksum will be computed on the UTF-8 version of this String.
	 * @param	checksumType	(optional) The checksum algorithm to use. Either Codec.CRC32 (default) or Codec.ADLER32
	 * @return	Float
	 * @since	0.7.0
	*/
	public function checksum(data:String, checksumType:int):Float;

	/**
	 * Asynchronously write the contents of a directory to a zip file.
	 * @param	root	A directory root to write to the zip stream.
	 * @param	zipFile	The path or File object of the destination zip file.
	 * @param	onComplete	A function callback that receives the zip file when writing is finished
	 * @return	String
	 * @since	0.7.0
	 * @example	<pre><code>
		    var root = Titanium.Filesystem.getFile(Titanium.App.getHome());
		    var dest = Titanium.Filesystem.getFile(
		        Titanium.Filesystem.getApplicationDataDirectory(), "app.zip");
		    Titanium.Codec.createZip(root, dest, function(destFile) {
		        alert("Wrote zip file: " + destFile);
		    });
		</code></pre>
		
	*/
	public function createZip(root:File, zipFile:File, onComplete:Dynamic):String;

	/**
	 * Decode a Base64-encoded String.
	 * @param	data	String to decode.
	 * @return	String
	 * @since	0.7.0
	*/
	public function decodeBase64(data:String):String;

	/**
	 * Decode a hex binary-encoded String.
	 * @param	data	String to decode.
	 * @return	String
	 * @since	0.7.0
	*/
	public function decodeHexBinary(data:String):String;

	/**
	 * Digest a String into a hex binary HMAC.
	String data will first be converted to UTF-8 data.
	 * @param	hashType	The hash type of the HMAC
	 * @param	data	The data to encode.
	 * @param	data	The key to us for the HMAC.
	 * @return	String
	 * @since	0.7.0
	*/
	public function digestHMACToHex(hashType:int, data:String, data:String):String;

	/**
	 * Encode some data using a digest algorithm to a hex binary String.
	String data will first be converted to UTF-8 data.
	 * @param	hashType	The hash type of the digest
	 * @param	data	The data to encode.
	 * @return	String
	 * @since	0.7.0
	*/
	public function digestToHex(hashType:int, data:Bytes):String;

	/**
	 * Encode some data into Base64.
	String data will first be converted to UTF-8 data.
	 * @param	data	The data to encode.
	 * @return	String
	 * @since	0.7.0
	*/
	public function encodeBase64(data:Bytes):String;

	/**
	 * Encode some data into a hex binary String.
	String data will first be converted to UTF-8 data.
	 * @param	data	data to encode
	 * @return	String
	 * @since	0.7.0
	*/
	public function encodeHexBinary(data:Bytes):String;

	/**
	 * Asynchronously extract the contents of a zip file.
	 * @param	zipFile	The path or File object of the zip file being extracted.
	 * @param	dest	A directory into which the files will be extracted.
	 * @param	onComplete	A function callback that receives destination directory when completed.
	 * @return	String
	 * @since	1.1.0
	 * @example	<pre><code>
		    var zip = Titanium.Filesystem.getFile(
		        Titanium.Filesystem.getApplicationDataDirectory(), "stuff.zip");
		    var dest = Titanium.Filesystem.getFile(Titanium.App.getHome());
		    Titanium.Codec.extractZip(root, dest, function(dest) {
		        alert("Extracted zip file to: " + dest);
		    });
		</code></pre>
		
	*/
	public function extractZip(zipFile:File, dest:File, onComplete:Dynamic):String;
}