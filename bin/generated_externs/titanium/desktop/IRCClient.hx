package titanium.desktop;
@:native("Titanium.Network.IRCClient")
extern class IRCClient {
	static var connected:String;
	static var connect:String->Float->String->String->String->String->Dynamic->String;
	static function disconnect():String;
	static function getNick():String;
	static function getUsers():Array<String>;
	static function isOp():Bool;
	static function isVoice():Bool;
	static function join(channel:String):String;
	static function send(channel:String, message:String):String;
	static function setNick(nick:String):String;
	static function unjoin(channel:String):String;
}