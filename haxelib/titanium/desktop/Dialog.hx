package titanium.desktop;
@:native("Titanium.UI.Dialog")
extern class Dialog {
	static function getDialogParameter(name:String, defaultValue:Dynamic):Dynamic;
	static function getDialogResult():String;
}