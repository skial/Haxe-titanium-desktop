package titanium.ui;
/**
 * An object representing a Dialog window.
 * @since	0.4.0
 * @example	null
*/
@:native("Titanium.UI.Dialog")
extern class Dialog {
	public function new():Void;

	/**
	 * Get an incoming UI dialog parameter
	 * @param	name	Name of the parameter
	 * @param	defaultValue	Default value of the parameter
	 * @return	Dynamic
	 * @since	0.4.0
	*/
	public function getDialogParameter(name:String, defaultValue:Dynamic):Dynamic;

	/**
	 * get results from UI dialog
	 * @return	String
	 * @since	0.4.0
	*/
	public function getDialogResult():String;
}