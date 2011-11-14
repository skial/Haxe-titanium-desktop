package titanium;
import titanium.worker.Worker;
/**
 * A module for creating Worker threads.
 * @since	0.6.0
 */
@:native("Titanium.Worker")
extern class Worker {

	/**
	 * Create a worker thread instance.
	 * @param	source	Either a JavaScript function (does not support closures)
	 * @return	Worker
	 * @since	0.6.0
	 */
	@:overload(public static function createWorker(source:String):Worker{})
	public static function createWorker(source:Dynamic):Worker;
}