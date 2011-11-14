package titanium;
import titanium.process.Process;
import titanium.process.Pipe;
/**
 * A module for creating processes.
 * @since	0.5.0
 */
@:native("Titanium.Process")
extern class Process {

	/**
	 * 
	 * @since	0.5.0
	 */
	public static var SIGABRT:String;

	/**
	 * 
	 * @since	0.5.0
	 */
	public static var SIGALRM:String;

	/**
	 * 
	 * @since	0.5.0
	 */
	public static var SIGBUS:String;

	/**
	 * 
	 * @since	0.5.0
	 */
	public static var SIGCHLD:String;

	/**
	 * 
	 * @since	0.5.0
	 */
	public static var SIGEMT:String;

	/**
	 * 
	 * @since	0.5.0
	 */
	public static var SIGFPE:String;

	/**
	 * 
	 * @since	0.5.0
	 */
	public static var SIGHUP:String;

	/**
	 * 
	 * @since	0.5.0
	 */
	public static var SIGILL:String;

	/**
	 * 
	 * @since	0.5.0
	 */
	public static var SIGINFO:String;

	/**
	 * 
	 * @since	0.5.0
	 */
	public static var SIGINT:String;

	/**
	 * 
	 * @since	0.5.0
	 */
	public static var SIGIO:String;

	/**
	 * 
	 * @since	0.5.0
	 */
	public static var SIGKILL:String;

	/**
	 * 
	 * @since	0.5.0
	 */
	public static var SIGPIPE:String;

	/**
	 * 
	 * @since	0.5.0
	 */
	public static var SIGPROF:String;

	/**
	 * 
	 * @since	0.5.0
	 */
	public static var SIGQUIT:String;

	/**
	 * 
	 * @since	0.5.0
	 */
	public static var SIGSEGV:String;

	/**
	 * 
	 * @since	0.5.0
	 */
	public static var SIGSTOP:String;

	/**
	 * 
	 * @since	0.5.0
	 */
	public static var SIGSYS:String;

	/**
	 * 
	 * @since	0.5.0
	 */
	public static var SIGTERM:String;

	/**
	 * 
	 * @since	0.5.0
	 */
	public static var SIGTRAP:String;

	/**
	 * 
	 * @since	0.5.0
	 */
	public static var SIGTSTP:String;

	/**
	 * 
	 * @since	0.5.0
	 */
	public static var SIGTTIN:String;

	/**
	 * 
	 * @since	0.5.0
	 */
	public static var SIGTTOU:String;

	/**
	 * 
	 * @since	0.5.0
	 */
	public static var SIGURG:String;

	/**
	 * 
	 * @since	0.5.0
	 */
	public static var SIGUSR1:String;

	/**
	 * 
	 * @since	0.5.0
	 */
	public static var SIGUSR2:String;

	/**
	 * 
	 * @since	0.5.0
	 */
	public static var SIGVTALRM:String;

	/**
	 * 
	 * @since	0.5.0
	 */
	public static var SIGWINCH:String;

	/**
	 * 
	 * @since	0.5.0
	 */
	public static var SIGXCPU:String;

	/**
	 * 
	 * @since	0.5.0
	 */
	public static var SIGXFSZ:String;

	/**
	 * Create a pipe for attaching to/from any number of processes.
	 * @return	titanium.process.Pipe
	 * @since	0.5.0
	 */
	public static function createPipe():titanium.process.Pipe;

	/**
	 * Create a Process object. There are two main ways to use this function:
	 * <pre><code>
	 *     Titanium.Process.createProcess({
	 *         args: ['mycmd', 'arg1', 'arg2'],
	 *         env: {'PATH': '/something'},
	 *         stdin: pipeIn,
	 *         stdout: pipeOut,
	 *          stderr: pipeErr
	 *     });
	 * </code></pre>
	 * <pre><code>
	 *     Titanium.Process.createProcess(args, environment, stdin, stdout, stderr);
	 * </code></pre>
	 * @param	args	Either a list of command-line arguments to use for this process invocation
	 * (including the executable path) or an object describing all parameters of
	 * this Process object (see above).]
	 * 
	 * @param	envionment	(optional) An object representing the environment to pass to this process.
	 * @param	pipeIn	(optional) A Process.Pipe object which the new process should use for receiving input.
	 * @param	pipeOut	(optional) A Process.Pipe object which the new process should use for sending output.
	 * @param	pipeErr	(optional) A Process.Pipe object which the new process should use for sending error output.
	 * @return	titanium.process.Process
	 * @since	0.5.0
	 * @example	<pre><code>
		    // Reading the output of a process using the read event.
		    // Win32 needs to run echo and more via cmd.exe
		    var echoCmd = Titanium.platform == "win32" ? 
		        ["C:\\Windows\\System32\\cmd.exe", "/C", "echo"] : ["/bin/echo"];
		    echoCmd.push("Data_for_echo!"
		
		    echoCmd.addEventListener(Titanium.READ, function(event)
		    {
		        // event.data will be a Bytes object with the output data.
		        alert(event.data.toString());
		    });
		    echoCmd.launch();
		</code></pre>
		
	 */
	public static function createProcess(args:Array<String>, ?envionment:Dynamic, ?pipeIn:titanium.process.Pipe, ?pipeOut:titanium.process.Pipe, ?pipeErr:titanium.process.Pipe):titanium.process.Process;

	/**
	 * This method is deprecated. See Process.Process.createProcess()
	 * @param	command	The command to launch
	 * @param	arguments	A list of arguments to the command
	 * @return	String
	 * @since	0.2.0
	 */
	public static function launch(command:String, arguments:Array<String>):String;
}