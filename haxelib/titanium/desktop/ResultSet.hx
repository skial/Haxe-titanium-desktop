package titanium.desktop;
/**
 * An object representing a set of result from a Database.DB query.
 * @since	0.4.0
 */
@:native("Titanium.Database.ResultSet")
extern class ResultSet {

	/**
	 * Releases the memory associated with this Database.ResultSet.
	 * @return	Void
	 * @since	0.4.0
	 */
	public static function close():Void;

	/**
	 * Return the value of a field in the current row of this Database.ResultSet, given
	 * its index in the original SQL query.
	 * @param	fieldIndex	The zero-based index of the field to query.
	 * @return	Bytes
	 * @since	0.4.0
	 */
	public static function field(fieldIndex:Float):Bytes;

	/**
	 * Return the value of the specified field in the current row.
	 * @param	name	The name of the field to query.
	 * @return	Bytes
	 * @since	0.4.0
	 */
	public static function fieldByName(name:String):Bytes;

	/**
	 * Return the number of fields in this Database.ResultSet.
	 * @return	Float
	 * @since	0.4.0
	 */
	public static function fieldCount():Float;

	/**
	 * Return the name of the specified field in the Database.ResultSet given its index.
	 * The index of a field is determined by the original SQL query that generated this
	 * Database.ResultSet.
	 * @param	fieldIndex	The zero-based index of the field to query.
	 * @return	String
	 * @since	0.4.0
	 */
	public static function fieldName(fieldIndex:Float):String;

	/**
	 * Check whether the current row of this Datbase.ResultSet is valid. Reasons
	 * for the current row not being valid include an error in the original SQL
	 * statement, a query that returned no results or iterating to the end of
	 * the Database.ResultSet.
	 * @return	Bool
	 * @since	0.4.0
	 */
	public static function isValidRow():Bool;

	/**
	 * Move the Database.ResultSet iterator to the next row of this
	 * result set. When the iterator has gone past the last entry in
	 * the Database.ResultSet, the <tt>isValidRow</tt> method will return
	 * false.
	 * @return	Void
	 * @since	0.4.0
	 */
	public static function next():Void;

	/**
	 * Return the number of rows in this Database.ResultSet.
	 * @return	Float
	 * @since	0.4.0
	 */
	public static function rowCount():Float;
}