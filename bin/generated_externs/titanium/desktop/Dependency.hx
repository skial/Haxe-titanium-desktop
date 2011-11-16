package titanium.desktop;
/**
 * An object representing a Titanium application dependency.
 * @since	0.4.0
 */
@:native("Titanium.API.Dependency")
extern class Dependency {

	/**
	 * Get the name of this dependency.
	 * @return	String
	 * @since	0.4.0
	 */
	public static function getName():String;

	/**
	 * Get the requirement for this dependency. Dependency requirement types are defined as constants on the API module. Currently the installer only support API.EQ dependency types.
	 * @return	String
	 * @since	0.4.0
	 */
	public static function getRequirement():String;

	/**
	 * Get the type of this dependency. Dependency types are defined as constants on the API module (e.g. API.SDK).
	 * @return	Float
	 * @since	0.4.0
	 */
	public static function getType():Float;

	/**
	 * Get the version part of this dependency.
	 * @return	String
	 * @since	0.4.0
	 */
	public static function getVersion():String;
}