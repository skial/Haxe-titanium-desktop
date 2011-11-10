package titanium.ui;
@:native("Titanium.UI.Dialog")
extern class Dialog {
	public function new():Void;
	public function getDialogParameter(name:String, defaultValue:Dynamic):Dynamic;
	public function getDialogResult():String;
}