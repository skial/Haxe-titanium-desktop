package titanium.desktop;
@:native("Titanium.UI")
extern class UI {
	static var CENTERED:Float;
	static function addTray(iconURL:String, ?eventListener:Dynamic):Tray;
	static function clearTray():Void;
	static function createCheckMenuItem(label:String, ?eventListener:Dynamic):Dynamic;
	static function createMenu():Menu;
	static function createMenuItem(label:String, ?eventListener:Dynamic, ?iconURL:String):MenuItem;
	static function createSeperatorMenuItem():Dynamic;
	@:overload(function(?options:String):UserWindow{})
	static function createWindow(?options:Dynamic):UserWindow;
	static function getContextMenu():Menu;
	static function getCurrentWindow():UserWindow;
	static function getIdleTime():Float;
	static function getMainWindow():UserWindow;
	static function getMenu():Menu;
	static function getOpenWindows():Array<UserWindow>;
	static function getWindows():Array<UserWindow>;
	static function setBadge(text:String):String;
	static function setBadgeImage(imageURL:String):String;
	static function setContextMenu(menu:Menu):String;
	static function setDockIcon(icon:String):String;
	static function setDockMenu(menu:Menu):String;
	static function setIcon(menu:String):String;
	static function setMenu(menu:Menu):String;
	static function showDialog(params:Dynamic):Dialog;
}