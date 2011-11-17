package titanium.desktop.process;
import titanium.desktop.process.Pipe;
/**
 * An object representing a process instance.
 * @since	0.5.0
 */
@:native("Titanium.Process.Process")
extern class Process {

	/**
	 * Return a clone of this process' environment.
	 * @return	Dynamic
	 * @since	0.5.0
	 */
	public function cloneEnvironment():Dynamic;

	/**
	 * Return the list of arguments associated with this Process.
	 * @return	Array<String>
	 * @since	0.5.0
	 */
	public function getArguments():Array<String>;

	/**
	 * Return the environment associated with this process.
	 * @param	key	an environment key
	 * @return	String|Object
	 * @since	0.5.0
	 */
	@:overload(function(key:String):String{})
	public function getEnvironment(key:String):Dynamic;

	/**
	 * Return the exit code for this process. Before the process exits, this value will be null.
	 * @return	Float
	 * @since	0.5.0
	 */
	public function getExitCode():Float;

	/**
	 * Return the process identifier for this process. Before the process launches, this value will be -1.
	 * @return	Float
	 * @since	0.5.0
	 */
	public function getPID():Float;

	/**
	 * Return the stderr pipe for this process.
	 * @return	titanium.desktop.process.Pipe
	 * @since	0.5.0
	 */
	public function getStderr():titanium.desktop.process.Pipe;

	/**
	 * Return the stdin pipe for this process.
	 * @return	titanium.desktop.process.Pipe
	 * @since	0.5.0
	 */
	public function getStdin():titanium.desktop.process.Pipe;

	/**
	 * Return the stdout pipe for this process.
	 * @return	titanium.desktop.process.Pipe
	 * @since	0.5.0
	 */
	public function getStdout():titanium.desktop.process.Pipe;

	/**
	 * Return true if this process is running and false otherwise.
	 * @return	Bool
	 * @since	0.5.0
	 */
	public function isRunning():Bool;

	/**
	 * Kill this process (SIGINT in Unix, TerminateProcess in Windows)
	 * @return	String
	 * @since	0.5.0
	 */
	public function kill():String;

	/**
	 * Launch this process asynchronously (not waiting for it's exit)
	 * @return	String
	 * @since	0.5.0
	 */
	public function launch():String;

	/**
	 * Send a signal (e.g. Process.SIGHUP) to this Process NOTE: this method does nothing in Windows
	 * @param	signal	The name of the signal to send.
	 * @return	String
	 * @since	0.5.0
	 */
	@:overload(function(signal:Float):String{})
	public function sendSignal(signal:String):String;

	/**
	 * Set an environment variable for this process
	 * @param	key	an environment key
	 * @param	value	the value
	 * @return	String
	 * @since	0.5.0
	 */
	public function setEnvironment(key:String, value:String):String;

	/**
	 * Set an onExit event handler for this process
	 * @param	onExit	a function
	 * @return	String
	 * @since	0.5.0
	 */
	public function setOnExit(onExit:Dynamic):String;

	/**
	 * Set an onRead event handler for this process stdout and stderr. This handler will take one argument which is the event for this output. To retrieve event data, simply access <tt>event.data</tt>.
	 * @param	onRead	a handler that is passed an event, with a "data" Bytes full of data read from the pipe
	 * @return	String
	 * @since	0.5.0
	 */
	public function setOnRead(onRead:Dynamic):String;

	/**
	 * Set the callback to invoke every time a line of input is received from the process. This callback will take one argument, which will be the line of output.
	 * @param	fn	a callback that is called with every line of output received from this process
	 * @return	String
	 * @since	0.5.0
	 */
	public function setOnReadLine(fn:Dynamic):String;

	/**
	 * Terminate this process (SIGTERM in Unix, TerminateProcess in Windows)
	 * @return	String
	 * @since	0.5.0
	 */
	public function terminate():String;

	/**
	 * Get a string representation of this process.
	 * @return	String
	 * @since	0.5.0
	 */
	public function toString():String;
}