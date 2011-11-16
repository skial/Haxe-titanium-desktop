package titanium.desktop;
@:native("Titanium.API")
extern class API {
	static var APP_UPDATE:Float;
	static var CRITICAL:Float;
	static var DEBUG:Float;
	static var EQ:Float;
	static var ERROR:Float;
	static var FATAL:Float;
	static var GT:Float;
	static var GTE:Float;
	static var INFO:Float;
	static var LT:Float;
	static var LTE:Float;
	static var MOBILESDK:Float;
	static var MODULE:Float;
	static var NOTICE:Float;
	static var RUNTIME:Float;
	static var SDK:Float;
	static var TRACE:Float;
	static var UNKNOWN:Float;
	static var WARN:Float;
	static var addEventListener:String->Dynamic->Float;
	static function createBytes(?contents:String):Bytes;
	static function createDependency(type:Float, name:String, version:String, ?requirement:Float):Dependency;
	static function createKList(?toWrap:Array<Dynamic>):Array<Dynamic>;
	static function createKMethod(?toWrap:Dynamic):Dynamic;
	static function createKObject(?toWrap:Dynamic):Dynamic;
	static function critical(statement:String):Void;
	static function debug(statement:String):Void;
	static function error(statement:String):Void;
	static function fatal(statement:String):Void;
	@:overload(function(event:String):Void{})
	static function fireEvent(event:Dynamic):Void;
	static function get(key:String):Dynamic;
	static function getApplication():Application;
	static function getComponentSearchPaths():Array<Component>;
	static function getEnvironment():Dynamic;
	static function getInstalledComponents():Array<Component>;
	static function getInstalledMobileSDKs():Array<Component>;
	static function getInstalledModules():Array<Component>;
	static function getInstalledRuntimes():Array<Component>;
	static function getInstalledSDKs():Array<Component>;
	static function getLogLevel():Float;
	static function info(statement:String):Void;
	static var installDependencies:Array<Dependency>->Dynamic->Void;
	static function log(type:Float, statement:String):Void;
	static function notice(statement:String):Void;
	static function print(data:Dynamic):Void;
	static function readApplicationManifest(manifestPath:String, ?applicationPath:String):Application;
	@:overload(function(id:Float):Void{})
	static function removeEventListener(id:Dynamic):Void;
	static function runOnMainThread(method:Dynamic, arg:Dynamic):Dynamic;
	static function runOnMainThreadAsync(method:Dynamic, arg:Dynamic):Void;
	static function set(key:String, value:String):Void;
	static function setLogLevel(level:Float):Void;
	static function trace(statement:String):Void;
	static function warn(statement:String):Void;
}