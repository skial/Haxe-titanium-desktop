package titanium.desktop;
/**
 * An implementation of an HTTPServer.
 * @since	0.3.0
 */
@:native("Titanium.Network.HTTPServer")
extern class HTTPServer {

	/**
	 * bind this server to a port on a specific interface
	 * @param	port	port to bind on
	 * @param	address	(optional) address to bind to
	 * @param	callback	callback for server logic (in seperate thread)
	 * @return	String
	 * @since	0.3.0
	 * @example	<pre><code>
		    // Create a HTTP server that listens on port 8080
		    var httpServer = Titanium.Network.createHTTPServer();
		    httpServer.bind(8080, function(request, response)
		    {
		        Titanium.API.debug("Got request for URI: " + request.getURI());
		        response.setContentType("text/html");
		        response.write("<h1>Hello!</h1>");
		    });
		</code></pre>
		
	 */
	public static var bind:Float->String->Dynamic->String;

	/**
	 * close this server
	 * @return	String
	 * @since	0.3.0
	 */
	public static function close():String;

	/**
	 * check to see if this server socket is closed
	 * @return	Bool
	 * @since	0.3.0
	 */
	public static function isClosed():Bool;
}