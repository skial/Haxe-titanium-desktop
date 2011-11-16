package titanium.desktop;
@:native("Titanium.Analytics")
extern class Analytics {
	static function featureEvent(name:String, data:Dynamic):Void;
	static function navEvent(from:String, to:String, name:String, data:Dynamic):Void;
	static function settingsEvent(name:String, data:Dynamic):String;
	static function timedEvent(event:String, ?start:Date, ?stop:Date, ?duration:Float, data:Dynamic):String;
	static function userEvent(name:String, data:Dynamic):String;
}