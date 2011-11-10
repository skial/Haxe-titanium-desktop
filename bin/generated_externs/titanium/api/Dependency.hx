package titanium.api;
@:native("Titanium.API.Dependency")
extern class Dependency {
	public function new():Void;
	public function getName():String;
	public function getRequirement():String;
	public function getType():Float;
	public function getVersion():String;
}