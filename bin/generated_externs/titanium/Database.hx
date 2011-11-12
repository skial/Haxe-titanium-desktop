package titanium;
titanium.database.DB;
@:native("Titanium.Database")
extern class Database {
	public function new():Void;
	public function open(name:String):DB;
	public function openFile(path:String):DB;
}