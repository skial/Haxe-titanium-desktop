package titanium.desktop.network;
import titanium.desktop.network.IPAddress;
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
	public function getDisplayName():String;

	/**
	 * Return the IP addresso of this interface.
	 * @return	titanium.desktop.network.IPAddress
	 * @since	0.9.0
	 */
	public function getIPAddress():titanium.desktop.network.IPAddress;

	/**
	 * Get the name of this interface.
	 * @return	String
	 * @since	0.9.0
	 */
	public function getName():String;

	/**
	 * Return the subnet mask of this interface as a Network.IPAddress object.
	 * @return	titanium.desktop.network.IPAddress
	 * @since	0.9.0
	 */
	public function getSubnetMask():titanium.desktop.network.IPAddress;

	/**
	 * Return true if this interface supports IPv4 and false otherwise.
	 * @return	Bool
	 * @since	0.9.0
	 */
	public function supportsIPv4():Bool;

	/**
	 * Return true if this interface supports IPv6 and false otherwise.
	 * @return	Bool
	 * @since	0.9.0
	 */
	public function supportsIPv6():Bool;
}