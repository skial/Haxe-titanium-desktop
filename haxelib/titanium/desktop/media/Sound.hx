package titanium.desktop.media;
/**
 * An object allowing for loading simple sounds and simple types of playback.
 * @since	0.2.0
 */
@:native("Titanium.Media.Sound")
extern class Sound {

	/**
	 * Return the current volume of this Media.Sound object. Volume
	 * values will be between 0.0 and 1.0.
	 * @return	Float
	 * @since	0.2.0
	 */
	public function getVolume():Float;

	/**
	 * Return true if this Media.Sound is set to loop and false otherwise.
	 * @return	Bool
	 * @since	0.2.0
	 */
	public function isLooping():Bool;

	/**
	 * Return true if this Media.Sound is paused and false otherwise.
	 * @return	Bool
	 * @since	0.2.0
	 */
	public function isPaused():Bool;

	/**
	 * Return true if this Media.Sound is playing and false otherwise.
	 * @return	Bool
	 * @since	0.2.0
	 */
	public function isPlaying():Bool;

	/**
	 * Set a callback to invoke once this sound is finished playing. If
	 * the sound is looping, this callback will be invoked after each
	 * iteration of the loop. Passing null as the argument to this function
	 * will unset the onComplete callback.
	 * @param	callback|null	The new callback function or null to unset it.
	 * @return	Void
	 * @since	0.2.0
	 */
	public function onComplete(_callback:Dynamic):Void;

	/**
	 * Pause a currently playing sound.
	 * @return	Void
	 * @since	0.2.0
	 */
	public function pause():Void;

	/**
	 * Play a sound object. If the sound is paused, it will resume from the current location.
	 * @return	Void
	 * @since	0.2.0
	 */
	public function play():Void;

	/**
	 * Reload this sound from the original URL or path.
	 * @return	Void
	 * @since	0.2.0
	 */
	public function reload():Void;

	/**
	 * Set whether or not this sound should loop.
	 * @param	looping	True if the sound should loop
	 * @return	Void
	 * @since	0.2.0
	 */
	public function setLooping(looping:Bool):Void;

	/**
	 * Set the volume of this sound. Sound volumes should be between
	 * 0.0 and 1.0. Values outside of this range will be clipped to
	 * 0.0 or 1.0.
	 * @param	volume	The new volume value of the sound between 0.0 to 1.0
	 * @return	Void
	 * @since	0.2.0
	 */
	public function setVolume(volume:Float):Void;

	/**
	 * Stop a currently playing sound.
	 * @return	Void
	 * @since	0.2.0
	 */
	public function stop():Void;
}