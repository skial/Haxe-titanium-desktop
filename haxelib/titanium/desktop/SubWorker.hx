package titanium.desktop;
@:native("Titanium.Worker.Worker")
extern class SubWorker {
	static function postMessage(data:Dynamic):String;
	static function start():String;
	static function terminate():String;
}