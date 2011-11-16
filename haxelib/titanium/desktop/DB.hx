package titanium.desktop;
@:native("Titanium.Database.DB")
extern class DB {
	static var lastInsertRowId:Float;
	static var rowsAffected:Float;
	static function close():Void;
	static function execute(query:String, ?arg:Dynamic):ResultSet;
	static function getPath():String;
	static function remove():Void;
}