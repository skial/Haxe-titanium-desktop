package titanium.desktop;
@:native("Titanium.Media.Sound")
extern class Sound {
	static function getVolume():Float;
	static function isLooping():Bool;
	static function isPaused():Bool;
	static function isPlaying():Bool;
	static var onComplete:Dynamic->Void;
	static function pause():Void;
	static function play():Void;
	static function reload():Void;
	static function setLooping(looping:Bool):Void;
	static function setVolume(volume:Float):Void;
	static function stop():Void;
}