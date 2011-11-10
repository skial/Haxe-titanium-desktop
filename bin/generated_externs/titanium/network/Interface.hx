package titanium.network;
@:native("Titanium.Network.Interface")
extern class Interface {
	public function new():Void;
	public function getDisplayName():String;
	public function getIPAddress():network.IPAddress;
	public function getName():String;
	public function getSubnetMask():network.IPAddress;
	public function supportsIPv4():Bool;
	public function supportsIPv6():Bool;
}