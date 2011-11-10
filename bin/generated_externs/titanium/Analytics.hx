package titanium;
@:native("Titanium.Analytics")
extern class Analytics {
	public function new():Void;
	public function featureEvent(name:String, data:Dynamic):Void;
	public function navEvent(from:String, to:String, name:String, data:Dynamic):Void;
	public function settingsEvent(name:String, data:Dynamic):String;
	public function timedEvent(event:String, start:Date, stop:Date, duration:Float, data:Dynamic):String;
	public function userEvent(name:String, data:Dynamic):String;
}