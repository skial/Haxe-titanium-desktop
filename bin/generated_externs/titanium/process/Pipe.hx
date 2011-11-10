package titanium.process;
@:native("Titanium.Process.Pipe")
extern class Pipe {
	public function new():Void;
	public function attach():String;
	public function close():String;
	public function detach():String;
	public function isAttached():Bool;
	public function write(data:Bytes|String):Float;
}