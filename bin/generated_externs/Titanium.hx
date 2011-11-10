package ;
@:native("Titanium")
extern class Titanium {
	public static var ALL:String;
	public static var APP_EXIT:String;
	public static var CLOSE:String;
	public static var CLOSED:String;
	public static var CREATE:String;
	public static var EXIT:String;
	public static var FOCUSED:String;
	public static var FULLSCREENED:String;
	public static var HIDDEN:String;
	public static var HTTP_ABORT:String;
	public static var HTTP_DATA_RECEIVED:String;
	public static var HTTP_DATA_SENT:String;
	public static var HTTP_DONE:String;
	public static var HTTP_REDIRECT:String;
	public static var HTTP_STATE_CHANGED:String;
	public static var HTTP_TIMEOUT:String;
	public static var MAXIMIZED:String;
	public static var MINIMIZED:String;
	public static var MOVED:String;
	public static var OPEN:String;
	public static var OPENED:String;
	public static var OPEN_REQUEST:String;
	public static var PAGE_INITIALIZED:String;
	public static var PAGE_LOADED:String;
	public static var READ:String;
	public static var RESIZED:String;
	public static var SHOWN:String;
	public static var UNFOCUSED:String;
	public static var UNFULLSCREENED:String;
	public function new():Void;
	public function getPlatform():String;
	public function getVersion():String;
}