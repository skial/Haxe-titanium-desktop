package titanium.ui;
@:native("Titanium.UI.MenuItem")
extern class MenuItem {
	public function new():Void;
	public function addCheckItem(label:String, listener:Dynamic):ui.MenuItem;
	public function addItem(label:String, listener:Dynamic, iconURL:String):ui.MenuItem;
	public function addSeparatorItem():ui.MenuItem;
	public function disable():String;
	public function enable():String;
	public function getAutoCheck(autocheck:Bool):String;
	public function getIcon():String|null;
	public function getLabel():String;
	public function getState():Bool;
	public function getSubmenu():ui.Menu|null;
	public function isCheck():Bool;
	public function isEnabled():Bool;
	public function isSeparator():Bool;
	public function setAutoCheck(autocheck:Bool):String;
	public function setIcon(iconURL:String|null):String;
	public function setLabel(label:String):String;
	public function setState(state:Bool):String;
	public function setSubmenu(menu:ui.Menu|null):String;
}