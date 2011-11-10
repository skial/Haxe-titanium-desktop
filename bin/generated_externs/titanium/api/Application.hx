package titanium.api;
@:native("Titanium.API.Application")
extern class Application {
	public function new():Void;
	public function getArguments():Array<String>;
	public function getArgumentValue(argument:String):String;
	public function getAvailableComponents():Array<api.Component>;
	public function getAvailableModules():Array<api.Component>;
	public function getAvailableRuntimes():Array<api.Component>;
	public function getBundledComponents():Array<api.Component>;
	public function getBundledModules():Array<api.Component>;
	public function getBundledRuntimes():Array<api.Component>;
	public function getComponents():Array<api.Component>;
	public function getDataPath():String;
	public function getDependencies():Array<api.Dependency>;
	public function getExecutablePath():String;
	public function getGUID():String;
	public function getID():String;
	public function getManifest():Array<Array<String>>>;
	public function getManifestPath():String;
	public function getModules():Array<api.Component>;
	public function getName():String;
	public function getPath():String;
	public function getPID():Float;
	public function getResourcesPath():String;
	public function getRuntime():api.Component;
	public function getVersion():String;
	public function hasArgument(argument:String):Bool;
	public function isCurrent():Bool;
	public function resolveDependencies():Array<api.Dependency>;
}