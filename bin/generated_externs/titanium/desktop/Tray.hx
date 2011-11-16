package titanium.desktop;
@:native("Titanium.UI.Tray")
extern class Tray {
	static function getHint():String;
	static function getIcon():String;
	static function getMenu():Menu;
	static function remove():String;
	static function setHint(?hint:String):String;
	static function setIcon(?icon:String):String;
	static function setMenu(menu:Menu):String;
}