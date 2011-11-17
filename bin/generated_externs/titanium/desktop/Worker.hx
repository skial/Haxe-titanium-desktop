package titanium.desktop;
import titanium.desktop.worker.Worker;
/**
 * A module for creating Worker threads.
 * @since	0.6.0
 */
@:native("Titanium.Worker")
extern class Worker {

	/**
	 * Create a worker thread instance.
	 * @param	source	Either a JavaScript function (does not support closures)
	 * @return	titanium.desktop.worker.Worker
	 * @since	0.6.0
	 */
	@:overload(function(source:String):titanium.desktop.worker.Worker{})
	public static function createWorker(source:Dynamic):titanium.desktop.worker.Worker;
}