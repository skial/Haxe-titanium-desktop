/**
 * ...
 * @author Skial Bainn
 */

package com.appcelerator.titanium.desktop;

@:native('Titanium.Codec')
extern class TDCodec {
	public function new():Void {}
	
	// FUNCTIONS
	
	/**
	 * Compute the checksum of the given String with the given checksum algorithm. 
	 * 
	 * @param	data							-		The string to compute the checksum on. The checksum will be computed on 
	 * 													the UTF-8 version of this String.
	 * @param	?checksumType				-		(optional) The checksum algorithm to use. Either Codec.CRC32 (default) or 
	 * 													Codec.ADLER32
	 * @return Float
	 */
	public function checksum(data:String, ?checksumType:Int):Float;
	
	/**
	 * Asynchronously write the contents of a directory to a zip file. 
	 * 
	 * @param	root							-		A directory root to write to the zip stream.
	 * @param	zipFile						-		The path or File object of the destination zip file.
	 * @param	onComplete					-		A function callback that receives the zip file when writing is finished.
	 * @return	String
	 */
	public function createZip(root:Dynamic, zipFile:Dynamic, onComplete:Dynamic):String;
	
	/**
	 * Decode a Base64-encoded String. 
	 * 
	 * @param	data							-		String to decode.
	 * @return	String
	 */
	public function decodeBase64(data:String):String;
	
	/**
	 * Decode a hex binary-encoded String. 
	 * 
	 * @param	data							-		String to decode.
	 * @return	String
	 */
	public function decodeHexBinary(data:String):String;
	
	/**
	 * Digest a String into a hex binary HMAC. String data will first be converted to UTF-8 data. 
	 * 
	 * @param	hashType						-		The hash type of the HMAC
	 * @param	data							-		The data to encode.
	 * @param	key							-		The key to us for the HMAC.
	 * @return	String
	 */
	public function digestHMACToHex(hashType:Int, data:String, key:String):String;
	
	/**
	 * Encode some data using a digest algorithm to a hex binary String. String data will first be converted to UTF-8 data. 
	 * 
	 * @param	hashType						-		The hash type of the digest
	 * @param	data							-		The data to encode.
	 * @return	String
	 */
	public function digestToHex(hashType:Int, data:Dynamic):String;
	
	/**
	 * Encode some data into Base64. String data will first be converted to UTF-8 data. 
	 * 
	 * @param	data							-		The data to encode.
	 * @return	String
	 */
	public function encodeBase64(data:Dynamic):String;
	
	/**
	 * Encode some data into a hex binary String. String data will first be converted to UTF-8 data. 
	 * 
	 * @param	data							-		Data to encode.
	 * @return	String
	 */
	public function encodeHexBinary(data:Dynamic):String;
	
	// PROPERTIES
	
	/**
	 * Constant specifying the Adler-32 checksum algorithm.
	 */
	public var ADLER32:Float;
	
	/**
	 * Constant specifying the CRC32 checksum algorithm.
	 */
	public var CRC32:String;
	
	/**
	 * Constant specifying the MD2 hash algorithm.
	 */
	public var MD2:String;
	
	/**
	 * Constant specifying the MD4 hash algorithm.
	 */
	public var MD4:String;
	
	/**
	 * Constant specifying the MD5 hash algorithm.
	 */
	public var MD5:String;
	
	/**
	 * Constant specifying the SHA1 hash algorithm.
	 */
	public var SHA1:String;
	
}