package titanium.desktop;
@:native("Titanium.Database")
extern class Database {
	static function open(name:String):DB;
	static function openFile(path:String):DB;
}