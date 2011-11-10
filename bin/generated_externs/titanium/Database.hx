package titanium;
@:native("Titanium.Database")
extern class Database {
	public function new():Void;
	public function open(name:String):database.DB;
	public function openFile(path:String):database.DB;
}