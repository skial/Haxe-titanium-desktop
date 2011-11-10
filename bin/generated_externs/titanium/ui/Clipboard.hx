package titanium.ui;
@:native("Titanium.UI.Clipboard")
extern class Clipboard {
	public function new():Void;
	public function clearData(type:String):String;
	public function clearText():String;
	public function getData(type:String):String;
	public function getText():String;
	public function hasData(type:String):Bool;
	public function hasText():Bool;
	public function setData(type:String, data:String):String;
	public function setText(newText:String):String;
}