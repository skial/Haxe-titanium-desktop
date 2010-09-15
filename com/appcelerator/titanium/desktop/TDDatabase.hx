/**
 * ...
 * @author Skial Bainn
 */

package com.appcelerator.titanium.desktop;

import com.appcelerator.titanium.desktop.database.TDDb;
import com.appcelerator.titanium.desktop.database.TDResultSet;

@:native('Titanium.Database')
extern class TDDatabase {
	public function new():Void {}
	
	// OBJECTS
	
	/**
	 * An object representing a Titanium Database.
	 */
	public var DB:TDDb;
	
	/**
	 * An object representing a set of result from a Database.DB query.
	 */
	public var ResultSet:TDResultSet;
	
	// FUNCTIONS
	
	/**
	 * Open a database, given a path to an sqlite file. 
	 * 
	 * @param	path					-		Path to an SQLite file to store the database in. If the file does not exist
	 * @return	Database.DB 
	 */
	public function openFile(path:String):TDDb;
	
}