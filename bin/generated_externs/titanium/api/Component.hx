package titanium.api;
/**
 * An object representing a Titanium component, which may be either a module,
runtime, SDK, Mobile SDK or application update.
 * @since	0.4.0
 */
@:native("Titanium.API.Component")
extern class Component {

	/**
	 * Get the name of this component.
	 * @return	String
	 * @since	0.4.0
	 */
	public static function getName():String;

	/**
	 * Get the path to this component.
	 * @return	String
	 * @since	0.4.0
	 */
	public static function getPath():String;

	/**
	 * Get the type of this component. Component types are defined as constants on the API module.
	 * @return	Float
	 * @since	0.4.0
	 */
	public static function getType():Float;

	/**
	 * Get the version of this component. Note that bundled components do not currently have a version.
	 * @return	String
	 * @since	0.4.0
	 */
	public static function getVersion():String;

	/**
	 * Whether or not this component is bundled with an application.
	 * @return	Bool
	 * @since	0.4.0
	 */
	public static function isBundled():Bool;

	/**
	 * Whether or not this component is currently loaded.
	 * @return	Bool
	 * @since	0.4.0
	 */
	public static function isLoaded():Bool;
}