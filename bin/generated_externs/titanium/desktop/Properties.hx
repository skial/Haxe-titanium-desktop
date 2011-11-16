package titanium.desktop;
@:native("Titanium.App.Properties")
extern class Properties {
	static var getDouble:String->Float->Float;
	static var getInt:String->Float->Float;
	static var getList:Dynamic->Dynamic->Dynamic;
	static var getString:String->String->String;
	static function hasProperty(name:String):Bool;
	static function listProperties():Array<String>;
	static function saveTo(path:String):Void;
	static function setDouble(name:String, value:Float):Void;
	static function setInt(name:String, value:Float):Void;
	static function setList(name:String, value:Array<String>):Void;
	static function setString(name:String, value:String):Void;
}