package titanium.filesystem;
@:native("Titanium.Filesystem.Filestream")
extern class Filestream {
	public static var MODE_APPEND:Float;
	public static var MODE_READ:Float;
	public static var MODE_WRITE:String;
	public function new():Void;
	public function close():Bool;
	public function isOpen():Bool;
	public function open(mode:Float, binary:Bool, append:Bool):Bool;
	public function read(size:Integer):Bytes;
	public function readLine():Bytes|null;
	public function ready():Bool;
	public function seek(offset:Integer, dir:Integer):Void;
	public function tell():Integer;
	public function write(data:String|Bytes|Number):Bool;
	public function writeLine(data:String|Bytes|Number):Bool;
}