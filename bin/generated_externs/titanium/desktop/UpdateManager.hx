package titanium.desktop;
@:native("Titanium.UpdateManager")
extern class UpdateManager {
	static var onupdate:String;
	static function cancelMonitor(id:Float):String;
	static function installAppUpdate(updateSpec:Dynamic):String;
	static var startMonitor:String->Dynamic->Float->Float;
}