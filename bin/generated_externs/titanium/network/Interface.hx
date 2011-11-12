package titanium.network;
titanium.network.IPAddress;
@:native("Titanium.Network.Interface")
extern class Interface {
	public function new():Void;
	public function getDisplayName():String;
	public function getIPAddress():IPAddress;
	public function getName():String;
	public function getSubnetMask():IPAddress;
	public function supportsIPv4():Bool;
	public function supportsIPv6():Bool;
}