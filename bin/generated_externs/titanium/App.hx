package titanium;
titanium.app.Properties;
@:native("Titanium.App")
extern class App {
	public function new():Void;
	public function appURLToPath():String;
	public function createProperties(properties:Dynamic):Properties;
	public function exit():Void;
	public function getArguments():Array<String>;
	public function getCopyright():String;
	public function getDescription():String;
	public function getGUID():String;
	public function getHome():String;
	public function getIcon():String;
	public function getID():String;
	public function getName():String;
	public function getPath():String;
	public function getPublisher():String;
	public function getStreamURL(arg:String):String;
	public function getSystemProperties():Properties;
	public function getURL():String;
	public function getVersion():String;
	public function loadProperties(path:String):Array<Properties>;
	public function restart():String;
	public function stderr():String;
	public function stdin(prompt:String, delimiter:String):String;
	public function stdout(data:Dynamic):Void;
}