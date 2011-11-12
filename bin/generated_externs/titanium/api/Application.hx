package titanium.api;
titanium.api.Component;
titanium.api.Dependency;
@:native("Titanium.API.Application")
extern class Application {
	public function new():Void;
	public function getArguments():Array<String>;
	public function getArgumentValue(argument:String):String;
	public function getAvailableComponents():Array<Component>;
	public function getAvailableModules():Array<Component>;
	public function getAvailableRuntimes():Array<Component>;
	public function getBundledComponents():Array<Component>;
	public function getBundledModules():Array<Component>;
	public function getBundledRuntimes():Array<Component>;
	public function getComponents():Array<Component>;
	public function getDataPath():String;
	public function getDependencies():Array<Dependency>;
	public function getExecutablePath():String;
	public function getGUID():String;
	public function getID():String;
	public function getManifest():Array<Array<String>>;
	public function getManifestPath():String;
	public function getModules():Array<Component>;
	public function getName():String;
	public function getPath():String;
	public function getPID():Float;
	public function getResourcesPath():String;
	public function getRuntime():Component;
	public function getVersion():String;
	public function hasArgument(argument:String):Bool;
	public function isCurrent():Bool;
	public function resolveDependencies():Array<Dependency>;
}