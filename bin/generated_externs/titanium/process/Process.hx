package titanium.process;
titanium.process.Pipe;
@:native("Titanium.Process.Process")
extern class Process {
	public function new():Void;
	public function cloneEnvironment():Object, environment;
	public function getArguments():Array<String>;
	@:overload(public function getEnvironment(key:String):String{})
	public function getEnvironment(key:String):Dynamic;
	public function getExitCode():Float;
	public function getPID():Float;
	public function getStderr():Pipe;
	public function getStdin():Pipe;
	public function getStdout():Pipe;
	public function isRunning():Bool;
	public function kill():String;
	public function launch():String;
	@:overload(public function sendSignal(signal:Float):String{})
	public function sendSignal(signal:String):String;
	public function setEnvironment(key:String, value:String):String;
	public function setOnExit(onExit:Dynamic):String;
	public function setOnRead(onRead:Dynamic):String;
	public function setOnReadLine(fn:Dynamic):String;
	public function terminate():String;
	public function toString():String;
}