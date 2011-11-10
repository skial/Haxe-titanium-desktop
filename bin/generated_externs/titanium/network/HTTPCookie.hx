package titanium.network;
@:native("Titanium.Network.HTTPCookie")
extern class HTTPCookie {
	public function new():Void;
	public function getComment():String;
	public function getDomain():String;
	public function getMaxAge():Integer;
	public function getName():String;
	public function getPath():String;
	public function getValue():String;
	public function getVersion():Integer;
	public function isHTTPOnly():Bool;
	public function isSecure():Bool;
	public function setComment(comment:String):String;
	public function setDomain(domain:String):String;
	public function setHTTPOnly(enableHTTPOnly:Bool):String;
	public function setMaxAge(lifetime:Integer):String;
	public function setName(name:String):String;
	public function setPath(path:String):String;
	public function setSecure(enableSecure:Bool):String;
	public function setValue(value:String):String;
	public function setVersion(version:Integer):String;
	public function toString():String;
}