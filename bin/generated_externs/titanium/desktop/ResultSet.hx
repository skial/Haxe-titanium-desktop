package titanium.desktop;
@:native("Titanium.Database.ResultSet")
extern class ResultSet {
	static function close():Void;
	static function field(fieldIndex:Float):Bytes;
	static function fieldByName(name:String):Bytes;
	static function fieldCount():Float;
	static function fieldName(fieldIndex:Float):String;
	static function isValidRow():Bool;
	static function next():Void;
	static function rowCount():Float;
}