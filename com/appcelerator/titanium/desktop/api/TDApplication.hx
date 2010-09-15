/**
 * ...
 * @author Skial Bainn
 */

package com.appcelerator.titanium.desktop.api;

import com.appcelerator.titanium.desktop.TDApi;

@:native('Titanium.API.Application')
extern class TDApplication {
	public function new():Void {}
	
	// METHODS
	
	/**
	 * Find the value for a given argument. You may either pass 'param' or '--param' and this method will find 
	 * the command-line value for '--param='. 
	 * 
	 * @param	argument			-		The name of the argument to find the value for.
	 * @return
	 */
	public function getArgumentValue(argument:String):String;
	
	/**
	 * Retrieve a list of command-line arguments passed to this application. This list will include the first 
	 * argument, which is the path to the executable. 
	 * 
	 * @return
	 */
	public function getArguments():Array<Dynamic>;
	
	/**
	 * Return a list of all available (installed and bundled) components for this application. This is simply the 
	 * list returned by API.getInstalledComponents() plus any components bundled with the application. Note 
	 * that bundled components do not have a version currently. 
	 * 
	 * @return
	 */
	public function getAvailableComponents():Array<Dynamic>;
	
	/**
	 * Return a list of all available (installed and bundled) modules for this application. This is simply the list
	 * returned by API.getInstalledModules() plus any components bundled with the application. Note that 
	 * bundled components do not have a version currently. 
	 * 
	 * @return
	 */
	public function getAvailableModules():Array<Dynamic>;
	
	/**
	 * Return a list of all available (installed and bundled) runtimes for this application. This is simply the list
	 * returned by API.getInstalledModules() plus any components bundled with the application. Note that 
	 * bundled components do not have a version currently. 
	 * 
	 * @return
	 */
	public function getAvailableRuntimes():Array<Dynamic>;
	
	/**
	 * Return a list of all bundled components for this for this application. Bundled components currently live 
	 * inside the application contents directory in the following directories: 
	 * 	.	My App.app/Contents/modules 
	 * 	.	My App.app/Contents/runtime 
	 * 	.	My App.app/Contents/sdk 
	 * 	.	My App.app/Contents/mobilesdk 

	 * 
	 * @return
	 */
	public function getBundledComponents():Array<Dynamic>;
	
	/**
	 * Return a list of all bundled modules for this for this application. Bundled modules currently live inside the
	 * application contents directory in the "My App.app/Contents/modules" directory. 
	 * 
	 * @return
	 */
	public function getBundledModules():Array<Dynamic>;
	
	/**
	 * Return a list of all bundled runtimes for this for this application. A bundled runtime currently live inside 
	 * the application contents directory in the "My App.app/Contents/runtime" directory. 
	 * 
	 * @return
	 */
	public function getBundledRuntimes():Array<Dynamic>;
	
	/**
	 * Return a list of all resolved components for this for this application. Resolved components may either be
	 * installed or bundled components. Note that currently bundled components returned in this list do not have
	 * a version.
	 * 
	 * @return
	 */
	public function getComponents():Array<Dynamic>;
	
	/**
	 * Get the path to the application's user data directory. This path is guaranteed to be writable (as opposed 
	 * to the application directory which should not be written to) and is suitable for storing any application 
	 * files. 
	 * 
	 * @return
	 */
	public function getDataPath():String;
	
	/**
	 * Get a list of this application's dependencies. Dependencies are defined in the application manifest file. 
	 * 
	 * @return
	 */
	public function getDependencies():Array<Dynamic>;
	
	/**
	 * Get the path to this application's executable. 
	 * 
	 * @return
	 */
	public function getExecutablePath():String;
	
	/**
	 * Get this application globally unique identifier. This is currently defined in the application manifest. 
	 * 
	 * @return
	 */
	public function getGUID():String;
	
	/**
	 * Get this human readable id currently defined in both the application manifest and the application's 
	 * tiapp.xml file. 
	 * 
	 * @return
	 */
	public function getID():String;
	
	/**
	 * Get the contents of this application's manifest as an array of string pairs (array of size 2). Each entry in 
	 * the manifest is a simple key-value pair. Comments are ignored. 
	 * 
	 * @return
	 */
	public function getManifest():Array<Dynamic>;
	
	/**
	 * Get the path to this application's manifest 
	 * 
	 * @return
	 */
	public function getManifestPath():String;
	
	/**
	 * Return a list of all resolved modules for this for this application. Resolved components may either be 
	 * installed or bundled components. Note that currently bundled components returned in this list do not have 
	 * a version. 
	 * 
	 * @return
	 */
	public function getModules():Array<Dynamic>;
	
	/**
	 * Get this application's name.
	 * 
	 * @return
	 */
	public function getName():String;
	
	/**
	 * Retrieve the process identifier of this application. If this application is not the currently running 
	 * application, this method will returned undefined. 
	 * 
	 * @return
	 */
	public function getPID():Float;
	
	/**
	 * Get this application's path. Note that this is the top-level path of application, not the path to the 
	 * application contents directory. On OS X currently, the application contents directory is "[app 
	 * path]/Contents"
	 * 
	 * @return
	 */
	public function getPath():String;
	
	/**
	 * Return the path to this application's resources directory. This directory is the 'Resources' subdirectory of 
	 * the application contents directory. 
	 * 
	 * @return
	 */
	public function getResourcesPath():String;
	
	/**
	 * Return the resolved runtime for this for this application. Resolved components may either be installed or 
	 * bundled components. Note that currently bundled components returned from this method do not have a
	 * version. 
	 * 
	 * @return
	 */
	public function getRuntime():TDApi;
	
	/**
	 * Get this application's version.
	 * 
	 * @return
	 */
	public function getVersion():String;
	
	/**
	 * Determine if the given argument is in the argument list. You may either pass 'param' or '--param' and 
	 * this method will find the command-line argument. 
	 * 
	 * @param	argument			-		The name of the argument to search for.
	 * @return
	 */
	public function hasArgument(argument:String):Bool;
	
	/**
	 * Returns whether or not this is the currently running application.
	 * 
	 * @return
	 */
	public function isCurrent():Bool;
	
	/**
	 * Attempt to resolve all the dependencies for this application. Resolved components should be accessible 
	 * through API.Application.getComponents afterward. Note that the currently running applicaiton should 
	 * already have all of its dependencies resolved. 
	 * 
	 * @return
	 */
	public function resolveDependencies():Array<Dynamic>;
	
}