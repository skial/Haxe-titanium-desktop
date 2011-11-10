package titanium.api;
@:native("Titanium.API.Component")
extern class Component {
	public function new():Void;
	public function getName():String;
	public function getPath():String;
	public function getType():Float;
	public function getVersion():String;
	public function isBundled():Bool;
	public function isLoaded():Bool;
}