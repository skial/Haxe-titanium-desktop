package titanium.desktop;
@:native("Titanium.Network.Interface")
extern class Interface {
	static function getDisplayName():String;
	static function getIPAddress():IPAddress;
	static function getName():String;
	static function getSubnetMask():IPAddress;
	static function supportsIPv4():Bool;
	static function supportsIPv6():Bool;
}