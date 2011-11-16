package titanium.desktop;
@:native("Titanium.Worker")
extern class Worker {
	@:overload(function(source:String):SubWorker{})
	static function createWorker(source:Dynamic):SubWorker;
}