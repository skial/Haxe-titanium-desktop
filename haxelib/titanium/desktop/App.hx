package titanium.desktop;
@:native("Titanium.App")
extern class App {
	static function appURLToPath():String;
	static function createProperties(?properties:Dynamic):Properties;
	static function exit():Void;
	static function getArguments():Array<String>;
	static function getCopyright():String;
	static function getDescription():String;
	static function getGUID():String;
	static function getHome():String;
	static function getIcon():String;
	static function getID():String;
	static function getName():String;
	static function getPath():String;
	static function getPublisher():String;
	static function getStreamURL(arg:String):String;
	static function getSystemProperties():Properties;
	static function getURL():String;
	static function getVersion():String;
	static function loadProperties(path:String):Array<Properties>;
	static function restart():String;
	static function stderr():String;
	static function stdin(?prompt:String, ?delimiter:String):String;
	static function stdout(data:Dynamic):Void;
}