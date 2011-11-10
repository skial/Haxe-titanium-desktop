package titanium.media;
@:native("Titanium.Media.Sound")
extern class Sound {
	public function new():Void;
	public function getVolume():Float;
	public function isLooping():Bool;
	public function isPaused():Bool;
	public function isPlaying():Bool;
	public function onComplete(callback|null:Dynamic):Void;
	public function pause():Void;
	public function play():Void;
	public function reload():Void;
	public function setLooping(looping:Bool):Void;
	public function setVolume(volume:Float):Void;
	public function stop():Void;
}