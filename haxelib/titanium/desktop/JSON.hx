package titanium.desktop;
@:native("Titanium.JSON")
extern class JSON {
	static function parse(jsonString:String):Dynamic;
	static function stringify(value:Dynamic):String;
}