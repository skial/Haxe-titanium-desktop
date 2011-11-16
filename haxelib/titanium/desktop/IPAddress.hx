package titanium.desktop;
@:native("Titanium.Network.IPAddress")
extern class IPAddress {
	static function isBroadcast():Bool;
	static function isGlobalMC():Bool;
	static function isInvalid():Bool;
	static function isIPV4():Bool;
	static function isIPV6():Bool;
	static function isLinkLocal():Bool;
	static function isLinkLocalMC():Bool;
	static function isLoopback():Bool;
	static function isMulticast():Bool;
	static function isNodeLocalMC():Bool;
	static function isOrgLocalMC():Bool;
	static function isSiteLocal():Bool;
	static function isSiteLocalMC():Bool;
	static function isUnicast():Bool;
	static function isWellKnownMC():Bool;
	static function isWildcard():Bool;
	static function toString():String;
}