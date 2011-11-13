package titanium.api;
/**
 * An object representing a Titanium application dependency.
 * @since	0.4.0
 * @example	null
*/
@:native("Titanium.API.Dependency")
extern class Dependency {
	public function new():Void;

	/**
	 * Get the name of this dependency.
	 * @return	String
	 * @since	0.4.0
	*/
	public function getName():String;

	/**
	 * Get the requirement for this dependency. Dependency requirement types are defined as constants on the API module. Currently the installer only support API.EQ dependency types.
	 * @return	String
	 * @since	0.4.0
	*/
	public function getRequirement():String;

	/**
	 * Get the type of this dependency. Dependency types are defined as constants on the API module (e.g. API.SDK).
	 * @return	Float
	 * @since	0.4.0
	*/
	public function getType():Float;

	/**
	 * Get the version part of this dependency.
	 * @return	String
	 * @since	0.4.0
	*/
	public function getVersion():String;
}