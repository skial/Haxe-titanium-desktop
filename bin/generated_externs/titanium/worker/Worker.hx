package titanium.worker;
@:native("Titanium.Worker.Worker")
extern class Worker {
	public function new():Void;
	public function postMessage(data:Dynamic):String;
	public function start():String;
	public function terminate():String;
}