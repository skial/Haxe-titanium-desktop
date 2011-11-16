package titanium.desktop;
@:native("Titanium.API.Dependency")
extern class Dependency {
	static function getName():String;
	static function getRequirement():String;
	static function getType():Float;
	static function getVersion():String;
}