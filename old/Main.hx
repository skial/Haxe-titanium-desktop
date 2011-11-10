package ;

import js.Lib;
import com.appcelerator.titanium.desktop.Titanium;

/**
 * ...
 * @author Skial Bainn
 */

class Main {
	
	static function main() {
		trace('This epic app was made with Titanium Desktop haXe wrappers by Skial Bainn');
		trace('platform: ' + Titanium.getPlatform());
		trace('version: ' + Titanium.getVersion());
		var window = Titanium.UI.getCurrentWindow();
		trace('current window height: ' + window.getHeight());
		trace('current window width: ' + window.getWidth());
		trace('current window x: ' + window.getX());
		trace('current window y: ' + window.getY());
		trace('operating system name: ' + Titanium.Platform.name);
		trace('opertating system type: ' + Titanium.Platform.ostype);
		trace('host mac address: ' + Titanium.Platform.macaddress);
		trace('host ip address: ' + Titanium.Platform.address);
		trace('host processor count: ' + Titanium.Platform.processorCount);
	}
}