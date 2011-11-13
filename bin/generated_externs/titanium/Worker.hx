package titanium;
import titanium.worker.Worker;
/**
 * A module for creating Worker threads.
 * @since	0.6.0
 */
@:native("Titanium.Worker")
extern class Worker {
	public function new():Void;

	/**
	 * Create a worker thread instance.
	 * @param	source	Either a JavaScript function (does not support closures)
	 * @return	Worker
	 * @since	0.6.0
	 */
	@:overload(public function createWorker(source:String):Worker{})
	public function createWorker(source:Dynamic):Worker;
}