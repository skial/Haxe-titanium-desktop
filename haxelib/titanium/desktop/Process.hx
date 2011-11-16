package titanium.desktop;
@:native("Titanium.Process")
extern class Process {
	static var SIGABRT:String;
	static var SIGALRM:String;
	static var SIGBUS:String;
	static var SIGCHLD:String;
	static var SIGEMT:String;
	static var SIGFPE:String;
	static var SIGHUP:String;
	static var SIGILL:String;
	static var SIGINFO:String;
	static var SIGINT:String;
	static var SIGIO:String;
	static var SIGKILL:String;
	static var SIGPIPE:String;
	static var SIGPROF:String;
	static var SIGQUIT:String;
	static var SIGSEGV:String;
	static var SIGSTOP:String;
	static var SIGSYS:String;
	static var SIGTERM:String;
	static var SIGTRAP:String;
	static var SIGTSTP:String;
	static var SIGTTIN:String;
	static var SIGTTOU:String;
	static var SIGURG:String;
	static var SIGUSR1:String;
	static var SIGUSR2:String;
	static var SIGVTALRM:String;
	static var SIGWINCH:String;
	static var SIGXCPU:String;
	static var SIGXFSZ:String;
	static function createPipe():Pipe;
	static function createProcess(args:Array<String>, ?envionment:Dynamic, ?pipeIn:Pipe, ?pipeOut:Pipe, ?pipeErr:Pipe):SubProcess;
	static function launch(command:String, arguments:Array<String>):String;
}