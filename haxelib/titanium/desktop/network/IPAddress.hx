package titanium.desktop.network;
/**
 * An object representing an IP address.
 * @since	0.2.0
 */
@:native("Titanium.Network.IPAddress")
extern class IPAddress {

	/**
	 * Check whether an IPAddress object is a broadcast address.
	 * @return	Bool
	 * @since	0.2.0
	 */
	public function isBroadcast():Bool;

	/**
	 * Check whether an IPAddress object is a global multicast address.
	 * @return	Bool
	 * @since	0.2.0
	 */
	public function isGlobalMC():Bool;

	/**
	 * Check whether an IPAddress object is invalid.
	 * @return	Bool
	 * @since	0.2.0
	 */
	public function isInvalid():Bool;

	/**
	 * Check whether an IPAddress object is an IPv4 address.
	 * @return	Bool
	 * @since	0.2.0
	 */
	public function isIPV4():Bool;

	/**
	 * Check whether an IPAddress object is an IPv6 address.
	 * @return	Bool
	 * @since	0.2.0
	 */
	public function isIPV6():Bool;

	/**
	 * Check whether an IPAddress object is a link-local address.
	 * @return	Bool
	 * @since	0.2.0
	 */
	public function isLinkLocal():Bool;

	/**
	 * Check whether an IPAddress object is a link-local multicast address.
	 * @return	Bool
	 * @since	0.2.0
	 */
	public function isLinkLocalMC():Bool;

	/**
	 * Check whether an IPAddress object is a loopback address.
	 * @return	Bool
	 * @since	0.2.0
	 */
	public function isLoopback():Bool;

	/**
	 * Check whether an IPAddress object is a multicast address.
	 * @return	Bool
	 * @since	0.2.0
	 */
	public function isMulticast():Bool;

	/**
	 * Check whether an IPAddress object is a node-local multicast address.
	 * @return	Bool
	 * @since	0.2.0
	 */
	public function isNodeLocalMC():Bool;

	/**
	 * Check whether an IPAddress object is an organization local multicast address.
	 * @return	Bool
	 * @since	0.2.0
	 */
	public function isOrgLocalMC():Bool;

	/**
	 * Check whether an IPAddrss object is a site-local address.
	 * @return	Bool
	 * @since	0.2.0
	 */
	public function isSiteLocal():Bool;

	/**
	 * Check whether an IPAddress object is a site-local multicast address.
	 * @return	Bool
	 * @since	0.2.0
	 */
	public function isSiteLocalMC():Bool;

	/**
	 * Check whether an IPAddress object is a unicast address.
	 * @return	Bool
	 * @since	0.2.0
	 */
	public function isUnicast():Bool;

	/**
	 * Check whether an IPAddress object is a well-known multicast address.
	 * @return	Bool
	 * @since	0.2.0
	 */
	public function isWellKnownMC():Bool;

	/**
	 * Check whether an IPAddress object is a wildcard address.
	 * @return	Bool
	 * @since	0.2.0
	 */
	public function isWildcard():Bool;

	/**
	 * Return a string representation of an IPAddress object.
	 * @return	String
	 * @since	0.2.0
	 */
	public function toString():String;
}