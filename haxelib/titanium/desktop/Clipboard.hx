package titanium.desktop;
@:native("Titanium.UI.Clipboard")
extern class Clipboard {
	static function clearData(?type:String):String;
	static function clearText():String;
	static function getData(type:String):String;
	static function getText():String;
	static function hasData(?type:String):Bool;
	static function hasText():Bool;
	static function setData(type:String, data:String):String;
	static function setText(newText:String):String;
}