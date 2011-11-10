package titanium.database;
@:native("Titanium.Database.DB")
extern class DB {
	public var lastInsertRowId:Float;
	public var rowsAffected:Float;
	public function new():Void;
	public function close():Void;
	public function execute(query:String, ...:Dynamic):database.ResultSet;
	public function getPath():String;
	public function remove():Void;
}