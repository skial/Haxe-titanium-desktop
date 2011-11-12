package titanium;
titanium.filesystem.File;
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
	public function createZip(root:File, zipFile:File, onComplete:Dynamic):String;
	public function decodeBase64(data:String):String;
	public function decodeHexBinary(data:String):String;
	public function digestHMACToHex(hashType:int, data:String, data:String):String;
	public function digestToHex(hashType:int, data:Bytes):String;
	public function encodeBase64(data:Bytes):String;
	public function encodeHexBinary(data:Bytes):String;
	public function extractZip(zipFile:File, dest:File, onComplete:Dynamic):String;
}