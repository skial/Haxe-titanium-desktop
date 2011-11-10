package titanium.api;
@:native("Titanium.API.Script")
extern class Script {
	public function new():Void;
	public function addScriptEvaluator(evaluator:Dynamic):String;
	public function canEvaluate(evaluator:Dynamic):Bool;
	public function canPreprocess(url:String):Bool;
	public function evaluate(mimeType:String, name:String, code:String, scope:Dynamic):Dynamic;
	public function preprocess(URL:String, scope:Dynamic):String;
	public function removeScriptEvaluator(evaluator:Dynamic):String;
}