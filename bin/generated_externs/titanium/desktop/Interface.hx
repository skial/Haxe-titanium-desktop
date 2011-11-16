package titanium.desktop;
import titanium.desktop.IPAddress;
/**
 * No description provided.
 * @since	0.8.5 or earlier
 */
@:native("Titanium.Network.Interface")
extern class Interface {

	/**
	 * Return the display name of this interface.
	 * @return	String
	 * @since	0.9.0
	 */
	public static function getDisplayName():String;

	/**
	 * Return the IP addresso of this interface.
	 * @return	IPAddress
	 * @since	0.9.0
	 */
	public static function getIPAddress():IPAddress;

	/**
	 * Get the name of this interface.
	 * @return	String
	 * @since	0.9.0
	 */
	public static function getName():String;

	/**
	 * Return the subnet mask of this interface as a Network.IPAddress object.
	 * @return	IPAddress
	 * @since	0.9.0
	 */
	public static function getSubnetMask():IPAddress;

	/**
	 * Return true if this interface supports IPv4 and false otherwise.
	 * @return	Bool
	 * @since	0.9.0
	 */
	public static function supportsIPv4():Bool;

	/**
	 * Return true if this interface supports IPv6 and false otherwise.
	 * @return	Bool
	 * @since	0.9.0
	 */
	public static function supportsIPv6():Bool;
}