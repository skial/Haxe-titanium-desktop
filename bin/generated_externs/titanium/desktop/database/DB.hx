package titanium.desktop.database;
import titanium.desktop.database.ResultSet;
/**
 * An object representing a Titanium Database.
 * @since	0.4.0
 */
@:native("Titanium.Database.DB")
extern class DB {

	/**
	 * The row id of the last insert operation.
	 * @since	0.4.0
	 */
	public var lastInsertRowId:Float;

	/**
	 * The number of rows affected by the last execute call.
	 * @since	0.4.0
	 */
	public var rowsAffected:Float;

	/**
	 * Close an open Database.DB. If the database is not open, this method will do nothing.
	 * @return	Void
	 * @since	0.4.0
	 */
	public function close():Void;

	/**
	 * Executes an SQL query on this Database.DB. Currently all queries must
	 * be valid SQLite-style SQL.
	 * @param	query	The SQL query to execute on this Database.DB.
	 * @param	...	(optional) A variable-length argument list of values to use with the given query
	 * @return	titanium.desktop.database.ResultSet
	 * @since	0.4.0
	 * @example	<pre><code>
		    // This code should open a database called mydb and raise an alert.
		    // It should then create an "images" table if it is not present.
		    // It should insert a row into the database.
		    // Then it should select all rows of the database and alert the values of the first.
		    DB.db = Titanium.Database.open("mydb");
		    alert('db is: ' + DB.db);
		    var rc = DB.db.execute('CREATE TABLE IF NOT EXISTS images (file_number INTEGER, title TEXT, description TEXT)');
		    rc = DB.db.execute(
		        "INSERT INTO images (title, description) VALUES (?, ?)",
		        'test', 'a nice description');
		    var rows = DB.db.execute("select * from images");
		    alert('result set is: ' + rows.fieldByName('title') + ' : ' + rows.fieldByName('description'));
		</code></pre>
		
	 */
	public function execute(query:String, ?arg:Dynamic):titanium.desktop.database.ResultSet;

	/**
	 * Get the full filesystem path to the database. If this database was
	 * opened via Datbase.openFile this path will be the originally path
	 * used, otherwise it will be the path to a WebKit database in the
	 * application data directory.
	 * @return	String
	 * @since	0.8.0
	 */
	public function getPath():String;

	/**
	 * Remove a Database.DB. This method will close the database
	 * if it is open and remove the file from the filesystem.
	 * @return	Void
	 * @since	0.4.0
	 */
	public function remove():Void;
}