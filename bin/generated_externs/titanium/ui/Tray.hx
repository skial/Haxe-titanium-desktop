package titanium.ui;
@:native("Titanium.UI.Tray")
extern class Tray {
	public function new():Void;
	public function getHint():String;
	public function getIcon():String;
	public function getMenu():ui.Menu|null;
	public function remove():String;
	public function setHint(hint:String):String;
	public function setIcon(icon:String):String;
	public function setMenu(menu:ui.Menu|null):String;
}