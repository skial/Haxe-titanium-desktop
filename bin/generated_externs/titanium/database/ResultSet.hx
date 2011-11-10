package titanium.database;
@:native("Titanium.Database.ResultSet")
extern class ResultSet {
	public function new():Void;
	public function close():Void;
	public function field(fieldIndex:Float):Boolean|String|Number|Bytes;
	public function fieldByName(name:String):Boolean|String|Number|Bytes;
	public function fieldCount():Float;
	public function fieldName(fieldIndex:Float):String;
	public function isValidRow():Bool;
	public function next():Void;
	public function rowCount():Float;
}