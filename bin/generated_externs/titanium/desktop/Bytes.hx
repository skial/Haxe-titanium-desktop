package titanium.desktop;
@:native("Titanium.Bytes")
extern class Bytes {
	static var length:String;
	static function byteAt(index:Float):Float;
	static function charAt(index:Float):String;
	@:overload(function(arg:Dynamic):Bytes{})
	static function concat(arg:String):Bytes;
	static function indexOf(needle:String):Float;
	static function lastIndexOf(needle:String):Float;
	static function split(delimiter:String, ?limit:Float):Array<String>;
	static function substr(startIndex:Float, ?length:Float):String;
	static function substring(startIndex:Float, ?endIndex:Float):String;
	static function toLowerCase():String;
	static function toString():String;
	static function toUpperCase():String;
}