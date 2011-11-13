package titanium.network;
/**
 * An implementation of an HTTPServer.
 * @since	0.3.0
 * @example	null
*/
@:native("Titanium.Network.HTTPServer")
extern class HTTPServer {
	public function new():Void;

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
	public var bind:Float->String->Dynamic->String;

	/**
	 * close this server
	 * @return	String
	 * @since	0.3.0
	*/
	public function close():String;

	/**
	 * check to see if this server socket is closed
	 * @return	Bool
	 * @since	0.3.0
	*/
	public function isClosed():Bool;
}