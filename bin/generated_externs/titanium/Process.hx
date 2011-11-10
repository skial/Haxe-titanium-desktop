package titanium;
@:native("Titanium.Process")
extern class Process {
	public var SIGABRT:String;
	public var SIGALRM:String;
	public var SIGBUS:String;
	public var SIGCHLD:String;
	public var SIGEMT:String;
	public var SIGFPE:String;
	public var SIGHUP:String;
	public var SIGILL:String;
	public var SIGINFO:String;
	public var SIGINT:String;
	public var SIGIO:String;
	public var SIGKILL:String;
	public var SIGPIPE:String;
	public var SIGPROF:String;
	public var SIGQUIT:String;
	public var SIGSEGV:String;
	public var SIGSTOP:String;
	public var SIGSYS:String;
	public var SIGTERM:String;
	public var SIGTRAP:String;
	public var SIGTSTP:String;
	public var SIGTTIN:String;
	public var SIGTTOU:String;
	public var SIGURG:String;
	public var SIGUSR1:String;
	public var SIGUSR2:String;
	public var SIGVTALRM:String;
	public var SIGWINCH:String;
	public var SIGXCPU:String;
	public var SIGXFSZ:String;
	public function new():Void;
	public function createPipe():process.Pipe;
	public function createProcess(args:Array<String>|Object, envionment:Dynamic, pipeIn:process.Pipe, pipeOut:process.Pipe, pipeErr:process.Pipe):process.Process;
	public function launch(command:String, arguments:Array<String>):String;
}