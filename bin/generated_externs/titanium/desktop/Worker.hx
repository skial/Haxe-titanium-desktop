package titanium.desktop;
import titanium.desktop.SubWorker;
/**
 * A module for creating Worker threads.
 * @since	0.6.0
 */
@:native("Titanium.Worker")
extern class Worker {

	/**
	 * Create a worker thread instance.
	 * @param	source	Either a JavaScript function (does not support closures)
	 * @return	SubWorker
	 * @since	0.6.0
	 */
	@:overload( function createWorker(source:String):SubWorker{})
	public static function createWorker(source:Dynamic):SubWorker;
}