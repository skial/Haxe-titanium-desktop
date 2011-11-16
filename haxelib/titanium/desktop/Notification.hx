package titanium.desktop;
@:native("Titanium.Notification.Notification")
extern class Notification {
	static function hide():Bool;
	static var setCallback:Dynamic->String;
	static function setIcon(icon:String):String;
	static function SetMessage(message:String):String;
	static function setTimeout(timeout:Int):String;
	static function setTitle(title:String):String;
	static function show():Bool;
}