package titanium;
@:native("Titanium.UpdateManager")
extern class UpdateManager {
	public var onupdate:String;
	public function new():Void;
	public function cancelMonitor(id:Float):String;
	public function installAppUpdate(updateSpec:Dynamic):String;
	public var startMonitor:String->Dynamic->Float->Float;
}