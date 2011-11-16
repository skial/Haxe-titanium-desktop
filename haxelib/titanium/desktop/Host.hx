package titanium.desktop;
@:native("Titanium.Network.Host")
extern class Host {
	static function getAddresses():Array<IPAddress>;
	static function getAliases():Array<String>;
	static function getName():String;
	static function isInvalid():Bool;
	static function toString():String;
}