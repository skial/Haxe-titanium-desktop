package titanium;
@:native("Titanium.JSON")
extern class JSON {
	public function new():Void;
	public function parse(jsonString:String):Dynamic;
	public function stringify(value:Dynamic):String;
}