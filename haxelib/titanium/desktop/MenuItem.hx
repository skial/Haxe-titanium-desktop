package titanium.desktop;
@:native("Titanium.UI.MenuItem")
extern class MenuItem {
	static function addCheckItem(label:String, ?listener:Dynamic):MenuItem;
	static function addItem(label:String, ?listener:Dynamic, iconURL:String):MenuItem;
	static function addSeparatorItem():MenuItem;
	static function disable():String;
	static function enable():String;
	static function getAutoCheck(autocheck:Bool):String;
	@:overload(function():String{})
	static function getIcon():Void;
	static function getLabel():String;
	static function getState():Bool;
	static function getSubmenu():Menu;
	static function isCheck():Bool;
	static function isEnabled():Bool;
	static function isSeparator():Bool;
	static function setAutoCheck(autocheck:Bool):String;
	@:overload(function(iconURL:String):String{})
	static function setIcon(iconURL:Void):String;
	static function setLabel(label:String):String;
	static function setState(state:Bool):String;
	static function setSubmenu(menu:Menu):String;
}