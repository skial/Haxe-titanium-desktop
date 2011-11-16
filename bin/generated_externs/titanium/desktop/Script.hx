package titanium.desktop;
@:native("Titanium.API.Script")
extern class Script {
	static function addScriptEvaluator(evaluator:Dynamic):String;
	static function canEvaluate(evaluator:Dynamic):Bool;
	static function canPreprocess(url:String):Bool;
	static function evaluate(mimeType:String, name:String, code:String, scope:Dynamic):Dynamic;
	static function preprocess(URL:String, scope:Dynamic):String;
	static function removeScriptEvaluator(evaluator:Dynamic):String;
}