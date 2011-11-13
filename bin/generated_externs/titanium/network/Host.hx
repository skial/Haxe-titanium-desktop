package titanium.network;
import titanium.network.IPAddress;
/**
 * An object representing a host on the network.
 * @since	0.2.0
 * @example	null
*/
@:native("Titanium.Network.Host")
extern class Host {
	public function new():Void;

	/**
	 * Returns the list of address for a Host object
	 * @return	Array<IPAddress>
	 * @since	0.2.0
	*/
	public function getAddresses():Array<IPAddress>;

	/**
	 * Returns the list of aliases for a Host object
	 * @return	Array<String>
	 * @since	0.2.0
	*/
	public function getAliases():Array<String>;

	/**
	 * Return the hostname of a Host object
	 * @return	String
	 * @since	0.2.0
	*/
	public function getName():String;

	/**
	 * Checks whether the Host object is invalid
	 * @return	Bool
	 * @since	0.2.0
	*/
	public function isInvalid():Bool;

	/**
	 * Returns a string representation of a Host object
	 * @return	String
	 * @since	0.2.0
	*/
	public function toString():String;
}