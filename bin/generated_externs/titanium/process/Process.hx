package titanium.process;
@:native("Titanium.Process.Process")
extern class Process {
	public function new():Void;
	public function cloneEnvironment():Object, environment;
	public function getArguments():Array<String>;
	public function getEnvironment(key:String):String|Object;
	public function getExitCode():Float;
	public function getPID():Float;
	public function getStderr():process.Pipe;
	public function getStdin():process.Pipe;
	public function getStdout():process.Pipe;
	public function isRunning():Bool;
	public function kill():String;
	public function launch():String;
	public function sendSignal(signal:Number|String):String;
	public function setEnvironment(key:String, value:String):String;
	public function setOnExit(onExit:Dynamic):String;
	public function setOnRead(onRead:Dynamic):String;
	public function setOnReadLine(fn:Dynamic):String;
	public function terminate():String;
	public function toString():String;
}