package titanium;
@:native("Titanium.Worker")
extern class Worker {
	public function new():Void;
	public function createWorker(source:String|Function):worker.Worker;
}