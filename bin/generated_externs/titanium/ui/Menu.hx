package titanium.ui;
titanium.ui.MenuItem;
@:native("Titanium.UI.Menu")
extern class Menu {
	public function new():Void;
	public function addCheckItem(label:String, listener:Dynamic):MenuItem;
	public function addItem(label:String, listener:Dynamic, iconURL:String):MenuItem;
	public function addSeparatorItem():MenuItem;
	public function appendItem(item:MenuItem):String;
	public function clear():String;
	public function getItemAt(index:Float):MenuItem;
	public function getLength():Float;
	public function insertItemAt(item:MenuItem, index:Float):String;
	public function removeItemAt(index:Float):String;
}