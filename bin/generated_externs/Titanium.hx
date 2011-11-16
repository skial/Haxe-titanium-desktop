package ;
@:native("Titanium")
extern class Titanium {
	static var ALL:String;
	static var APP_EXIT:String;
	static var CLOSE:String;
	static var CLOSED:String;
	static var CREATE:String;
	static var EXIT:String;
	static var FOCUSED:String;
	static var FULLSCREENED:String;
	static var HIDDEN:String;
	static var HTTP_ABORT:String;
	static var HTTP_DATA_RECEIVED:String;
	static var HTTP_DATA_SENT:String;
	static var HTTP_DONE:String;
	static var HTTP_REDIRECT:String;
	static var HTTP_STATE_CHANGED:String;
	static var HTTP_TIMEOUT:String;
	static var MAXIMIZED:String;
	static var MINIMIZED:String;
	static var MOVED:String;
	static var OPEN:String;
	static var OPENED:String;
	static var OPEN_REQUEST:String;
	static var PAGE_INITIALIZED:String;
	static var PAGE_LOADED:String;
	static var READ:String;
	static var RESIZED:String;
	static var SHOWN:String;
	static var UNFOCUSED:String;
	static var UNFULLSCREENED:String;
	static function getPlatform():String;
	static function getVersion():String;
}