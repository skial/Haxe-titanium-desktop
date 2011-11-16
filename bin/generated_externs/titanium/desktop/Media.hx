package titanium.desktop;
@:native("Titanium.Media")
extern class Media {
	static function beep():String;
	static function createSound(path:String):Sound;
}