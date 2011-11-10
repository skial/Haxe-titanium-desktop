package ;

/**
 * ...
 * @author Skial Bainn
 */

import massive.neko.cmd.CommandLineRunner;
 
class Main extends CommandLineRunner {

	public static function main() {
		var m = new Main();
	}
	
	public function new() {
		
		super();
		
		this.mapCommand(Build, 'build', ['b'], 'copies all folders into one output folder');
		
		this.run();
		
	}
	
}