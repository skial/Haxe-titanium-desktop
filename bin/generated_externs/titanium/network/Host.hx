package titanium.network;
@:native("Titanium.Network.Host")
extern class Host {
	public function new():Void;
	public function getAddresses():Array<network.IPAddress>;
	public function getAliases():Array<String>;
	public function getName():String;
	public function isInvalid():Bool;
	public function toString():String;
}