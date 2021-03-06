package titanium.desktop.network;
/**
 * An object representing an IRC client connection. [DEPRECATED]
 * @since	0.2.0
 */
@:native("Titanium.Network.IRCClient")
extern class IRCClient {

	/**
	 * The connected property of an IRCClient object
	 * @since	0.2.0
	 */
	public var connected:String;

	/**
	 * Connects an IRC to the host specified during creation of the IRCClient object
	 * @param	hostname	the hostname
	 * @param	port	the port
	 * @param	nick	the users nickname
	 * @param	name	the users full name
	 * @param	user	the users login name
	 * @param	pass	the users password
	 * @param	callback	a callback function to recieve IRC events.
	 * @return	String
	 * @since	0.2.0
	 */
	public function connect(hostname:String, port:Float, nick:String, name:String, user:String, pass:String, _callback:Dynamic):String;

	/**
	 * Disconnects an IRC connection
	 * @return	String
	 * @since	0.2.0
	 */
	public function disconnect():String;

	/**
	 * Returns the nick name for the connection
	 * @return	String
	 * @since	0.2.0
	 */
	public function getNick():String;

	/**
	 * Returns a list of users for the channel
	 * @return	Array<String>
	 * @since	0.2.0
	 */
	public function getUsers():Array<String>;

	/**
	 * Checks whether a user has OP status
	 * @return	Bool
	 * @since	0.2.0
	 */
	public function isOp():Bool;

	/**
	 * Checks whether a user has VOICE status
	 * @return	Bool
	 * @since	0.2.0
	 */
	public function isVoice():Bool;

	/**
	 * Joins a channel
	 * @param	channel	channel to join to
	 * @return	String
	 * @since	0.2.0
	 */
	public function join(channel:String):String;

	/**
	 * Sends data to the IRC connection
	 * @param	channel	the channel to send the data to
	 * @param	message	message to send
	 * @return	String
	 * @since	0.2.0
	 */
	public function send(channel:String, message:String):String;

	/**
	 * Sets the nick name for the connection
	 * @param	nick	nickname to use
	 * @return	String
	 * @since	0.2.0
	 */
	public function setNick(nick:String):String;

	/**
	 * Leaves a channel
	 * @param	channel	channel to leave
	 * @return	String
	 * @since	0.2.0
	 */
	public function unjoin(channel:String):String;
}