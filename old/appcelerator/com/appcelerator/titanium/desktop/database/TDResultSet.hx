/**
 * ...
 * @author Skial Bainn
 */

package com.appcelerator.titanium.desktop.database;

@:native('Titanium.Database.ResultSet')
extern class TDResultSet {
	public function new():Void {}
	
	// METHODS
	
	/**
	 * Releases the memory associated with this Database.ResultSet. 
	 */
	public function close():Void;
	
	/**
	 * Return the value of a field in the current row of this Database.ResultSet, given its index in the original SQL query. 
	 * 
	 * @param	fieldIndex					-		The zero-based index of the field to query.
	 * @return	Dynamic
	 */
	public function field(fieldIndex:Float):Dynamic;
	
	/**
	 * Return the value of the specified field in the current row. 
	 * 
	 * @param	name							-		The name of the field to query.
	 * @return	Dynamic
	 */
	public function fieldByName(name:String):Dynamic;
	
	/**
	 * Return the number of fields in this Database.ResultSet. 
	 * 
	 * @return Float
	 */
	public function fieldCount():Float;
	
	/**
	 * Return the name of the specified field in the Database.ResultSet given its index. The index of a field is
	 * determined by the original SQL query that generated this Database.ResultSet. 
	 * 
	 * @param	fieldIndex					-		The zero-based index of the field to query.
	 * @return	String
	 */
	public function fieldName(fieldIndex:Float):String;
	
	/**
	 * Check whether the current row of this Datbase.ResultSet is valid. Reasons for the current row not being 
	 * valid include an error in the original SQL statement, a query that returned no results or iterating to the 
	 * end of the Database.ResultSet. 
	 * 
	 * @return Boolean
	 */
	public function isValidRow():Bool;
	
	/**
	 * Move the Database.ResultSet iterator to the next row of this result set. When the iterator has gone past 
	 * the last entry in the Database.ResultSet, the isValidRow method will return false. 
	 */
	public function next():Void;
	
	/**
	 * Return the number of rows in this Database.ResultSet. 
	 * 
	 * @return	Float
	 */
	public function rowCount():Float;
	
}