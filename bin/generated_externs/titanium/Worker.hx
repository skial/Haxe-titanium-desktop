package titanium;
titanium.worker.Worker;
@:native("Titanium.Worker")
extern class Worker {
	public function new():Void;
	@:overload(public function createWorker(source:String):Worker{})
	public function createWorker(source:Dynamic):Worker;
}