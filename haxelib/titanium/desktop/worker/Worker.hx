package titanium.desktop.worker;
/**
 * An object representing a Titanium Worker.
 * @since	0.6.0
 */
@:native("Titanium.Worker.Worker")
extern class Worker {

	/**
	 * Post a message (async) into the worker thread's queue to be handled by onmessage
	 * @param	data	Any JSON serializable type to pass to the child.
	 * @return	String
	 * @since	0.6.0
	 */
	public function postMessage(data:Dynamic):String;

	/**
	 * Start the worker thread
	 * @return	String
	 * @since	0.6.0
	 */
	public function start():String;

	/**
	 * Terminate the worker thread. The thread can be restarted with Worker.start()
	 * @return	String
	 * @since	0.6.0
	 */
	public function terminate():String;
}