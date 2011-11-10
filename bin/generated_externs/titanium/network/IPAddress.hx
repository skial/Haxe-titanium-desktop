package titanium.network;
@:native("Titanium.Network.IPAddress")
extern class IPAddress {
	public function new():Void;
	public function isBroadcast():Bool;
	public function isGlobalMC():Bool;
	public function isInvalid():Bool;
	public function isIPV4():Bool;
	public function isIPV6():Bool;
	public function isLinkLocal():Bool;
	public function isLinkLocalMC():Bool;
	public function isLoopback():Bool;
	public function isMulticast():Bool;
	public function isNodeLocalMC():Bool;
	public function isOrgLocalMC():Bool;
	public function isSiteLocal():Bool;
	public function isSiteLocalMC():Bool;
	public function isUnicast():Bool;
	public function isWellKnownMC():Bool;
	public function isWildcard():Bool;
	public function toString():String;
}