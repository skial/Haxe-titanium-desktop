/**
 * ...
 * @author Skial Bainn
 */

package com.appcelerator.titanium.desktop.network;

@:native('Titanium.Network.IRCClient')
extern class TDIRCClient {
	public function new():Void {}
	
	// FUNCTIONS
	
	/**
	 * Connects an IRC to the host specified during creation of the IRCClient object 
	 * 
	 * @param	hostname						-		The hostname.
	 * @param	port							-		The port.
	 * @param	nick							-		The users nickname.
	 * @param	name							-		The users full name.
	 * @param	user							-		The users login name.
	 * @param	pass							-		The users password.
	 * @param	handler						-		A callback function to recieve IRC events.
	 * @return	String
	 */
	public function connect(hostname:String, port:Float, nick:String, name:String, user:String, pass:String, handler:Dynamic):String;
	
	/**
	 * Disconnects an IRC connection 
	 * 
	 * @return	String
	 */
	public function disconnect():String;
	
	/**
	 * Returns the nick name for the connection 
	 * 
	 * @return	String
	 */
	public function getNick():String;
	
	/**
	 * Returns a list of users for the channel 
	 * 
	 * @return	Array
	 */
	public function getUsers():Array<Dynamic>;
	
	/**
	 * Checks whether a user has OP status 
	 * 
	 * @return	Boolean
	 */
	public function isOp():Bool;
	
	/**
	 * Checks whether a user has VOICE status 
	 * 
	 * @return	Boolean
	 */
	public function isVoice():Bool;
	
	/**
	 * Joins a channel 
	 * 
	 * @param	channel						-		Channel to join to.
	 * @return	String
	 */
	public function join(channel:String):String;
	
	/**
	 * Sends data to the IRC connection 
	 * 
	 * @param	channel						-		The channel to send the data to.
	 * @param	message						-		Message to send.
	 * @return	String
	 */
	public function send(channel:String, message:String):String;
	
	/**
	 * Sets the nick name for the connection 
	 * 
	 * @param	nick							-		Nickname to use.
	 * @return	String
	 */
	public function setNick(nick:String):String;
	
	/**
	 * Leaves a channel 
	 * 
	 * @param	channel						-		Channel to leave.
	 * @return	String
	 */
	public function unjoin(channel:String):String;
	
	// PROPERTIES
	
	/**
	 * The connected property of an IRCClient object.
	 */
	public var connected:String;
	
}