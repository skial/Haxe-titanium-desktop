/**
 * ...
 * @author Skial Bainn
 */

package com.appcelerator.titanium.desktop.network;

@:native('Titanium.Network.IPAddress')
extern class TDIPAddress {
	public function new():Void {}
	
	// METHODS
	
	/**
	 * Check whether an IPAddress object is a broadcast address. 
	 * 
	 * @return	Boolean
	 */
	public function isBroadcast():Bool;
	
	/**
	 * Check whether an IPAddress object is a global multicast address. 
	 * 
	 * @return	Boolean
	 */
	public function isGlobalMC():Bool;
	
	/**
	 * Check whether an IPAddress object is an IPv4 address. 
	 * 
	 * @return	Boolean
	 */
	public function isIPV4():Bool;
	
	/**
	 * Check whether an IPAddress object is an IPv6 address. 
	 * 
	 * @return	Boolean
	 */
	public function isIPV6():Bool;
	
	/**
	 * Check whether an IPAddress object is invalid. 
	 * 
	 * @return	Boolean
	 */
	public function isInvalid():Bool;
	
	/**
	 * Check whether an IPAddress object is a link-local address. 
	 * 
	 * @return	Boolean
	 */
	public function isLinkLocal():Bool;
	
	/**
	 * Check whether an IPAddress object is a link-local multicast address. 
	 * 
	 * @return	Boolean
	 */
	public function isLinkLocalMC():Bool;
	
	/**
	 * Check whether an IPAddress object is a loopback address. 
	 * 
	 * @return	Boolean
	 */
	public function isLoopback():Bool;
	
	/**
	 * Check whether an IPAddress object is a multicast address. 
	 * 
	 * @return	Boolean
	 */
	public function isMulticast():Bool;
	
	/**
	 * Check whether an IPAddress object is a node-local multicast address. 
	 * 
	 * @return	Boolean
	 */
	public function isNodeLocalMC():Bool;
	
	/**
	 * Check whether an IPAddress object is an organization local multicast address. 
	 * 
	 * @return	Boolean
	 */
	public function isOrgLocalMC():Bool;
	
	/**
	 * Check whether an IPAddrss object is a site-local address. 
	 * 
	 * @return	Boolean
	 */
	public function isSiteLocal():Bool;
	
	/**
	 * Check whether an IPAddress object is a site-local multicast address. 
	 * 
	 * @return	Boolean
	 */
	public function isSiteLocalMC():Bool;
	
	/**
	 * Check whether an IPAddress object is a unicast address. 
	 * 
	 * @return	Boolean
	 */
	public function isUnicast():Bool;
	
	/**
	 * Check whether an IPAddress object is a well-known multicast address. 
	 * 
	 * @return	Boolean
	 */
	public function isWellKnownMC():Bool;
	
	/**
	 * Check whether an IPAddress object is a wildcard address. 
	 * 
	 * @return	Boolean
	 */
	public function isWildcard():Bool;
	
	/**
	 * Return a string representation of an IPAddress object. 
	 * 
	 * @return	String
	 */
	public function toString():String;
	
}