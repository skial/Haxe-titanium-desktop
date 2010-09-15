/**
 * ...
 * @author Skial Bainn
 */

package com.appcelerator.titanium.desktop;

import com.appcelerator.titanium.desktop.process.TDPipe;
import com.appcelerator.titanium.desktop.process.TDProcessChild;

@:native('Titanium.Process')
extern class TDProcess {
	public function new():Void {}
	
	// OBJECTS
	
	/**
	 * An object representing an IO pipe.
	 */
	public var Pipe:TDPipe;
	
	/**
	 * An object representing a process instance.
	 */
	public var Process:TDProcessChild;
	
	// FUNCTIONS
	
	/**
	 * Create an pipe for attach to/from any number of processes. 
	 * 
	 * @return	Process.Pipe 
	 */
	public function createPipe():TDPipe;
	
	/**
	 * Create a Process object. There are two main ways to use this function: 
	 * 	1.	Titanium.Process.createProcess({args: ['mycmd', 'arg1', 'arg2'],env: {'PATH': '/something'},stdin: pipeIn,stdout: pipeOut,stderr: pipeErr});
	 * 	2.	Titanium.Process.createProcess(args, environment, stdin, stdout, stderr);
	 * 
	 * @param	args										-		Either a list of command-line arguments to use for this process 
	 * 																invocation (including the executable path) or an object describing all 
	 * 																parameters of this Process object (see above).] 
	 * @param	?environment							-		(optional) An object representing the environment to pass to this 
	 * 																process.
	 * @param	?pipeIn									-		(optional) A Process.Pipe object which the new process should use for receiving input.
	 * @param	?pipeOut									-		(optional) A Process.Pipe object which the new process should use for sending output.
	 * @param	?pipeErr									-		(optional) A Process.Pipe object which the new process should use for sending error output.
	 * @return	Process.Process 
	 */
	public function createProcess(args:Dynamic, ?environment:Dynamic, ?pipeIn:TDPipe, ?pipeOut:TDPipe, ?pipeErr:TDPipe):TDProcessChild;
	
	/**
	 * This method is deprecated. See Process.Process.createProcess() 
	 * 
	 * @deprecated
	 * @param	command									-		The command to launch
	 * @param	_arguments								-		A list of arguments to the command
	 * @return	String
	 */
	public function launch(command:String, _arguments:Array<Dynamic>):String;
	
	//	PROPERTIES
	
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
	
}