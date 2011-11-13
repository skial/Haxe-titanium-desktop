package titanium;
import titanium.media.Sound;
/**
 * A module for dealing with media.
 * @since	0.2.0
 * @example	null
*/
@:native("Titanium.Media")
extern class Media {
	public function new():Void;

	/**
	 * Activate the system bell. Some systems may have disabled the system bell.
	 * @return	String
	 * @since	0.2.0
	*/
	public function beep():String;

	/**
	 * Factory method for Sound objects, created given a path or a URL to a sound file.
	The types of sound files that can be played depend on the codecs installed on the
	user's system.
	 * @param	path	The path or url to the sound file to play.
	 * @return	Sound
	 * @since	0.2.0
	 * @example	<pre><code>
		    // The "app://" points to the Resources folder of your Titanium application.
		    var soundObj = Titanium.Media.createSound('app://path/to/file.mp3');
		    soundObj.play();
		</code></pre>
		
	*/
	public function createSound(path:String):Sound;
}