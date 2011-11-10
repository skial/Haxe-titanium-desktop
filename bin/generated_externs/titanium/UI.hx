package titanium;
@:native("Titanium.UI")
extern class UI {
	public static var CENTERED:Float;
	public function new():Void;
	public function addTray(iconURL:String, eventListener:Dynamic):ui.Tray|null;
	public function clearTray():Void;
	public function createCheckMenuItem(label:String, eventListener:Dynamic):ui.CheckMenuItem;
	public function createMenu():ui.Menu;
	public function createMenuItem(label:String, eventListener:Dynamic, iconURL:String):ui.MenuItem;
	public function createSeperatorMenuItem():ui.SeparatorMenuItem;
	public function createWindow(options:String|Object):ui.UserWindow;
	public function getContextMenu():ui.Menu|null;
	public function getCurrentWindow():ui.UserWindow;
	public function getIdleTime():Float;
	public function getMainWindow():ui.UserWindow;
	public function getMenu():ui.Menu|null;
	public function getOpenWindows():Array<ui.UserWindow>;
	public function getWindows():Array<ui.UserWindow>;
	public function setBadge(text:String):String;
	public function setBadgeImage(imageURL:String):String;
	public function setContextMenu(menu:ui.Menu|null):String;
	public function setDockIcon(icon:String):String;
	public function setDockMenu(menu:ui.Menu):String;
	public function setIcon(menu:String):String;
	public function setMenu(menu:ui.Menu|null):String;
	public function showDialog(params:Dynamic):ui.Dialog;
}