package titanium.api;
/**
 * Script object.
 * @since	0.8.0
 * @example	null
*/
@:native("Titanium.API.Script")
extern class Script {
	public function new():Void;

	/**
	 * <p>
	Adds a script evalutor Script evaluators are responsible for matching and evaluating
	custom <script> types, and preprocessing URLs. 
	</p>
	
	<p>
	When a <tt>&lt;script type="text/language"&gt;</tt> tag is seen, the first
	evaluator that returns true to <tt>canEvaluate("text/language")</tt> will
	evaluate that script.
	</p>
	
	When a URLRequest is received, the first evaluator that returns true to 
	<tt>canPreprocess(URL)</tt> will preprocess that URL. Evaluators should
	follow this API:
	<ol><li>
	        <tt>canEvaluate(String mimeType)</tt> returns true or false.
	    </li> <li>
	        <tt>canPreprocess(String mimeType)</tt> returns true or false.
	    </li><li>
	        <tt>evaluate(String mimeType, String name, String sourceCode, Object scope)</tt> returns result of evaluation
	    </li><li>
	        <tt>preprocess(String url, Object scope)</tt> returns preprocessed content.
	</li></ol>
	 * @param	evaluator	The evaluator to add.
	 * @return	String
	 * @since	0.7.0
	*/
	public function addScriptEvaluator(evaluator:Dynamic):String;

	/**
	 * 
	 * @param	evaluator	The mimeType to check
	 * @return	Bool
	 * @since	0.7.0
	*/
	public function canEvaluate(evaluator:Dynamic):Bool;

	/**
	 * 
	 * @param	url	The URL to check
	 * @return	Bool
	 * @since	0.7.0
	*/
	public function canPreprocess(url:String):Bool;

	/**
	 * Evaluates a string of code
	 * @param	mimeType	The code's mime type (i.e. "text/ruby", "text/php")
	 * @param	name	The name of the code's origin (usually a filename, or URL)
	 * @param	code	The actual code
	 * @param	scope	global variable scope (i.e. "window")
	 * @return	Dynamic
	 * @since	0.7.0
	*/
	public function evaluate(mimeType:String, name:String, code:String, scope:Dynamic):Dynamic;

	/**
	 * Runs an app URL through preprocessing, returning the result as a string
	 * @param	URL	the URL for this resource (app
	 * @param	scope	global variable scope to expose into the preprocessed file
	 * @return	String
	 * @since	0.7.0
	*/
	public function preprocess(URL:String, scope:Dynamic):String;

	/**
	 * Removes a script evalutor
	 * @param	evaluator	The evaluator to remove
	 * @return	String
	 * @since	0.7.0
	*/
	public function removeScriptEvaluator(evaluator:Dynamic):String;
}