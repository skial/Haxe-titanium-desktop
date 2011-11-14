package titanium;
/**
 * The Titanium Analytics module used for recording analytics events.
 * @since	0.7.0
 */
@:native("Titanium.Analytics")
extern class Analytics {

	/**
	 * Send an analytics event associated with application feature functionality.
	 * @param	name	Feature name.
	 * @param	data	Extra event data to pass along. This will be converted to JSON.
	 * @return	Void
	 * @since	0.7.0
	 * @example	<pre><code>
		    Titanium.Analytics.featureEvent('user.login', {
		        'username': username,
		        'time':(new Date()).toString()
		    });
		</code></pre>
		
	 */
	public static function featureEvent(name:String, data:Dynamic):Void;

	/**
	 * Send an analytics event associated with application navigation.
	 * @param	from	Navigation starting point, the context we're leaving.
	 * @param	to	Navigation ending point, the context to which we're going.
	 * @param	name	Event name.
	 * @param	data	Extra event data to pass along. This will be converted to JSON.
	 * @return	Void
	 * @since	0.7.0
	 * @example	<pre><code>
		    Titanium.Analytics.navEvent('tab.places', 'tab.settings');
		</code></pre>
		
	 */
	public static function navEvent(from:String, to:String, name:String, data:Dynamic):Void;

	/**
	 * Send an analytics event associated with application settings or configuration
	 * @param	name	Setting name.
	 * @param	data	Extra event data to pass along. This will be converted to JSON.
	 * @return	String
	 * @since	0.7.0
	 * @example	<pre><code>
		    Titanium.Analytics.settingsEvent('profile', {
		        'nickname': nickname,
		        'location': location,
		    });
		</code></pre>
		
	 */
	public static function settingsEvent(name:String, data:Dynamic):String;

	/**
	 * Send an analytics event tracking the duration of an application action
	 * @param	event	Event name
	 * @param	start	Event start time (optional if duration is specified).
	 * @param	stop	Event stop time (optional if duration is specified).
	 * @param	duration	Duration in seconds (optional if both start and stop are specified)
	 * @param	data	Extra event data to pass along. This will be converted to JSON.
	 * @return	String
	 * @since	0.3.0
	 * @example	<pre><code>
		    // This may be used with Date() objects
		    Titanium.Analytics.timedEvent('mile.run',
		        startTime, // A Date object.
		        new Date(), // The finishing time.
		        null, // Not used if dates are present.
		        {'location':'park.grounds'}
		    });
		
		    // ...or just my specifying a number of seconds.
		    Titanium.Analytics.timedEvent('mile.run',
		        null, null, // Dates are null.
		        356, // Number of seconds.
		        {'location':'park.grounds'}
		    });
		</code></pre>
		
	 */
	public static function timedEvent(event:String, ?start:Date, ?stop:Date, ?duration:Float, data:Dynamic):String;

	/**
	 * Send an analytics event not covered by the other interfaces.
	 * @param	name	Event name.
	 * @param	data	Extra event data to pass along. This will be converted to JSON.
	 * @return	String
	 * @since	0.7.0
	 * @example	<pre><code>
		    Titanium.Analytics.userEvent('hairstyling.event', {
		        'type': 'Mohawk',
		        'color': 'pink',
		        'location': 'Times Square'
		    });
		</code></pre>
		
	 */
	public static function userEvent(name:String, data:Dynamic):String;
}