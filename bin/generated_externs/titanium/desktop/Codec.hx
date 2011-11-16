package titanium.desktop;
@:native("Titanium.Codec")
extern class Codec {
	static var ADLER32:Float;
	static var CRC32:String;
	static var MD2:String;
	static var MD4:String;
	static var MD5:String;
	static var SHA1:String;
	static function checksum(data:String, ?checksumType:Int):Float;
	static function createZip(root:File, zipFile:File, onComplete:Dynamic):String;
	static function decodeBase64(data:String):String;
	static function decodeHexBinary(data:String):String;
	static function digestHMACToHex(hashType:Int, data:String, data:String):String;
	static function digestToHex(hashType:Int, data:Bytes):String;
	static function encodeBase64(data:Bytes):String;
	static function encodeHexBinary(data:Bytes):String;
	static function extractZip(zipFile:File, dest:File, onComplete:Dynamic):String;
}