package titanium;
titanium.media.Sound;
@:native("Titanium.Media")
extern class Media {
	public function new():Void;
	public function beep():String;
	public function createSound(path:String):Sound;
}