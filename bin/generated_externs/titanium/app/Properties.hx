package titanium.app;
@:native("Titanium.App.Properties")
extern class Properties {
	public function new():Void;
	public function getDouble(name:String, default:Float):Float;
	public function getInt(name:String, default:Float):Float;
	public function getList(name:list, default:list):list;
	public function getString(name:String, default:String):String;
	public function hasProperty(name:String):Bool;
	public function listProperties():Array<String>;
	public function saveTo(path:String):Void;
	public function setDouble(name:String, value:Float):Void;
	public function setInt(name:String, value:Float):Void;
	public function setList(name:String, value:Array<String>):Void;
	public function setString(name:String, value:String):Void;
}