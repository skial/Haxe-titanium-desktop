package titanium.desktop;
@:native("Titanium.API.Application")
extern class Application {
	static function getArguments():Array<String>;
	static function getArgumentValue(argument:String):String;
	static function getAvailableComponents():Array<Component>;
	static function getAvailableModules():Array<Component>;
	static function getAvailableRuntimes():Array<Component>;
	static function getBundledComponents():Array<Component>;
	static function getBundledModules():Array<Component>;
	static function getBundledRuntimes():Array<Component>;
	static function getComponents():Array<Component>;
	static function getDataPath():String;
	static function getDependencies():Array<Dependency>;
	static function getExecutablePath():String;
	static function getGUID():String;
	static function getID():String;
	static function getManifest():Array<Array<String>>;
	static function getManifestPath():String;
	static function getModules():Array<Component>;
	static function getName():String;
	static function getPath():String;
	static function getPID():Float;
	static function getResourcesPath():String;
	static function getRuntime():Component;
	static function getVersion():String;
	static function hasArgument(argument:String):Bool;
	static function isCurrent():Bool;
	static function resolveDependencies():Array<Dependency>;
}