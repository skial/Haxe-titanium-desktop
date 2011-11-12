package titanium.ui;
titanium.ui.MenuItem;
titanium.ui.Menu;
@:native("Titanium.UI.MenuItem")
extern class MenuItem {
	public function new():Void;
	public function addCheckItem(label:String, listener:Dynamic):MenuItem;
	public function addItem(label:String, listener:Dynamic, iconURL:String):MenuItem;
	public function addSeparatorItem():MenuItem;
	public function disable():String;
	public function enable():String;
	public function getAutoCheck(autocheck:Bool):String;
	@:overload(public function getIcon():String{})
	public function getIcon():Void;
	public function getLabel():String;
	public function getState():Bool;
	public function getSubmenu():Menu;
	public function isCheck():Bool;
	public function isEnabled():Bool;
	public function isSeparator():Bool;
	public function setAutoCheck(autocheck:Bool):String;
	@:overload(public function setIcon(iconURL:String):String{})
	public function setIcon(iconURL:Void):String;
	public function setLabel(label:String):String;
	public function setState(state:Bool):String;
	public function setSubmenu(menu:Menu):String;
}