package titanium.desktop;
@:native("Titanium.Platform")
extern class Platform {
	static function createUUID():String;
	static function getArchitecture():String;
	static function getMachineId():String;
	static function getName():String;
	static function getOSType():String;
	static function getProcessorCount():Float;
	static function getUsername():String;
	static function getVersion():String;
	static function openApplication(name:String):String;
	static function openURL(url:String):String;
	static function takeScreenshot(filename:String):String;
}