package titanium.desktop;
@:native("Titanium.API.Component")
extern class Component {
	static function getName():String;
	static function getPath():String;
	static function getType():Float;
	static function getVersion():String;
	static function isBundled():Bool;
	static function isLoaded():Bool;
}