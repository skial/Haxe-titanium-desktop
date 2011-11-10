package titanium.network;
@:native("Titanium.Network.IRCClient")
extern class IRCClient {
	public var connected:String;
	public function new():Void;
	public function connect(hostname:String, port:Float, nick:String, name:String, user:String, pass:String, callback:Dynamic):String;
	public function disconnect():String;
	public function getNick():String;
	public function getUsers():Array<String>;
	public function isOp():Bool;
	public function isVoice():Bool;
	public function join(channel:String):String;
	public function send(channel:String, message:String):String;
	public function setNick(nick:String):String;
	public function unjoin(channel:String):String;
}