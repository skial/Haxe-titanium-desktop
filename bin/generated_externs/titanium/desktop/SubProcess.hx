package titanium.desktop;
@:native("Titanium.Process.Process")
extern class SubProcess {
	static function cloneEnvironment():Dynamic;
	static function getArguments():Array<String>;
	@:overload(function(key:String):String{})
	static function getEnvironment(key:String):Dynamic;
	static function getExitCode():Float;
	static function getPID():Float;
	static function getStderr():Pipe;
	static function getStdin():Pipe;
	static function getStdout():Pipe;
	static function isRunning():Bool;
	static function kill():String;
	static function launch():String;
	@:overload(function(signal:Float):String{})
	static function sendSignal(signal:String):String;
	static function setEnvironment(key:String, value:String):String;
	static function setOnExit(onExit:Dynamic):String;
	static function setOnRead(onRead:Dynamic):String;
	static function setOnReadLine(fn:Dynamic):String;
	static function terminate():String;
	static function toString():String;
}