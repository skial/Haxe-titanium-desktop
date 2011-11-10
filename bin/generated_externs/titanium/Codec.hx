package titanium;
@:native("Titanium.Codec")
extern class Codec {
	public var ADLER32:Float;
	public var CRC32:String;
	public var MD2:String;
	public var MD4:String;
	public var MD5:String;
	public var SHA1:String;
	public function new():Void;
	public function checksum(data:String, checksumType:int):Float;
	public function createZip(root:filesystem.File|String, zipFile:filesystem.File|String, onComplete:Dynamic):String;
	public function decodeBase64(data:String):String;
	public function decodeHexBinary(data:String):String;
	public function digestHMACToHex(hashType:int, data:String, data:String):String;
	public function digestToHex(hashType:int, data:String|Bytes):String;
	public function encodeBase64(data:String|Bytes):String;
	public function encodeHexBinary(data:String|Bytes):String;
	public function extractZip(zipFile:filesystem.File|String, dest:filesystem.File|String, onComplete:Dynamic):String;
}