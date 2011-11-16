package titanium.desktop;
@:native("Titanium.UI.Menu")
extern class Menu {
	static function addCheckItem(label:String, ?listener:Dynamic):MenuItem;
	static function addItem(label:String, ?listener:Dynamic, iconURL:String):MenuItem;
	static function addSeparatorItem():MenuItem;
	static function appendItem(item:MenuItem):String;
	static function clear():String;
	static function getItemAt(index:Float):MenuItem;
	static function getLength():Float;
	static function insertItemAt(item:MenuItem, index:Float):String;
	static function removeItemAt(index:Float):String;
}