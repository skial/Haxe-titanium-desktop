package titanium.desktop;
@:native("Titanium.Network.HTTPCookie")
extern class HTTPCookie {
	static function getComment():String;
	static function getDomain():String;
	static function getMaxAge():Int;
	static function getName():String;
	static function getPath():String;
	static function getValue():String;
	static function getVersion():Int;
	static function isHTTPOnly():Bool;
	static function isSecure():Bool;
	static function setComment(comment:String):String;
	static function setDomain(domain:String):String;
	static function setHTTPOnly(enableHTTPOnly:Bool):String;
	static function setMaxAge(lifetime:Int):String;
	static function setName(name:String):String;
	static function setPath(path:String):String;
	static function setSecure(enableSecure:Bool):String;
	static function setValue(value:String):String;
	static function setVersion(version:Int):String;
	static function toString():String;
}