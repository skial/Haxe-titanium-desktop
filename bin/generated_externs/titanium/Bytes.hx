package titanium;
@:native("Titanium.Bytes")
extern class Bytes {
	public var length:String;
	public function new():Void;
	public function byteAt(index:Float):Float;
	public function charAt(index:Float):String;
	public function concat(...:Byte|String):Bytes;
	public function indexOf(needle:String):Float;
	public function lastIndexOf(needle:String):Float;
	public function split(delimiter:String, limit:Float):Array<String>;
	public function substr(startIndex:Float, length:Float):String;
	public function substring(startIndex:Float, endIndex:Float):String;
	public function toLowerCase():String;
	public function toString():String;
	public function toUpperCase():String;
}