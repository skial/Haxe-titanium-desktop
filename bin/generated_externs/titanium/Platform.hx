package titanium;
@:native("Titanium.Platform")
extern class Platform {
	public function new():Void;
	public function createUUID():String;
	public function getArchitecture():String;
	public function getMachineId():String;
	public function getName():String;
	public function getOSType():String;
	public function getProcessorCount():Float;
	public function getUsername():String;
	public function getVersion():String;
	public function openApplication(name:String):String;
	public function openURL(url:String):String;
	public function takeScreenshot(filename:String):String;
}