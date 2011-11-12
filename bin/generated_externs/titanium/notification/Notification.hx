package titanium.notification;
@:native("Titanium.Notification.Notification")
extern class Notification {
	public function new():Void;
	public function hide():Bool;
	public var setCallback:Dynamic->String;
	public function setIcon(icon:String):String;
	public function SetMessage(message:String):String;
	public function setTimeout(timeout:Integer):String;
	public function setTitle(title:String):String;
	public function show():Bool;
}