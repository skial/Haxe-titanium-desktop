package titanium;
titanium.ui.Dialog;
titanium.ui.Tray;
titanium.ui.UserWindow;
titanium.ui.CheckMenuItem;
titanium.ui.MenuItem;
titanium.ui.Menu;
titanium.ui.SeparatorMenuItem;
@:native("Titanium.UI")
extern class UI {
	public static var CENTERED:Float;
	public function new():Void;
	public function addTray(iconURL:String, eventListener:Dynamic):Tray;
	public function clearTray():Void;
	public function createCheckMenuItem(label:String, eventListener:Dynamic):CheckMenuItem;
	public function createMenu():Menu;
	public function createMenuItem(label:String, eventListener:Dynamic, iconURL:String):MenuItem;
	public function createSeperatorMenuItem():SeparatorMenuItem;
	@:overload(public function createWindow(options:String):UserWindow{})
	public function createWindow(options:Dynamic):UserWindow;
	public function getContextMenu():Menu;
	public function getCurrentWindow():UserWindow;
	public function getIdleTime():Float;
	public function getMainWindow():UserWindow;
	public function getMenu():Menu;
	public function getOpenWindows():Array<UserWindow>;
	public function getWindows():Array<UserWindow>;
	public function setBadge(text:String):String;
	public function setBadgeImage(imageURL:String):String;
	public function setContextMenu(menu:Menu):String;
	public function setDockIcon(icon:String):String;
	public function setDockMenu(menu:Menu):String;
	public function setIcon(menu:String):String;
	public function setMenu(menu:Menu):String;
	public function showDialog(params:Dynamic):Dialog;
}