package titanium.ui;
@:native("Titanium.UI.Menu")
extern class Menu {
	public function new():Void;
	public function addCheckItem(label:String, listener:Dynamic):ui.MenuItem;
	public function addItem(label:String, listener:Dynamic, iconURL:String):ui.MenuItem;
	public function addSeparatorItem():ui.MenuItem;
	public function appendItem(item:ui.MenuItem):String;
	public function clear():String;
	public function getItemAt(index:Float):ui.MenuItem;
	public function getLength():Float;
	public function insertItemAt(item:ui.MenuItem, index:Float):String;
	public function removeItemAt(index:Float):String;
}