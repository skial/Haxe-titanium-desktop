/**
 * ...
 * @author Skial Bainn
 */

package com.appcelerator.titanium.desktop.database;

@:native('Titanium.Database.DB')
extern class TDDb {
	public function new():Void {}
	
	// METHODS
	
	/**
	 * Close an open Database.DB. If the database is not open, this method will do nothing. 
	 */
	public function close():Void;
	
	/**
	 * Executes an SQL query on this Database.DB. Currently all queries must be valid SQLite-style SQL. 
	 * 
	 * @param	query							-		The SQL query to execute on this Database.DB.
	 * @param	?variables					-		(optional) A variable-length argument list of values to use with the given query
	 * @return	Database.ResultSet 
	 */
	public function execute(query:String, ?variables:Array<Dynamic>):TDResultSet;
	
	/**
	 * Get the full filesystem path to the database. If this database was opened via Datbase.openFile this path 
	 * will be the originally path used, otherwise it will be the path to a WebKit database in the application data 
	 * directory. 
	 * 
	 * @return String
	 */
	public function getPath():String;
	
	/**
	 * Remove a Database.DB. This method will close the database if it is open and remove the file from the filesystem. 
	 */
	public function remove():Void;
	
	// PROPERTIES
	
	/**
	 * The row id of the last insert operation. 
	 */
	public var lastInsertRowId:Float;
	
	/**
	 * The number of rows affected by the last execute call.
	 */
	public var rowsAffected:Float;
	
}