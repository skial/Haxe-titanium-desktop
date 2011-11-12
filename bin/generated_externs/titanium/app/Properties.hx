package titanium.app;
@:native("Titanium.App.Properties")
extern class Properties {
	public function new():Void;
	public var getDouble:String->Float->Float;
	public var getInt:String->Float->Float;
	public var getList:Dynamic->Dynamic->Dynamic;
	public var getString:String->String->String;
	public function hasProperty(name:String):Bool;
	public function listProperties():Array<String>;
	public function saveTo(path:String):Void;
	public function setDouble(name:String, value:Float):Void;
	public function setInt(name:String, value:Float):Void;
	public function setList(name:String, value:Array<String>):Void;
	public function setString(name:String, value:String):Void;
}