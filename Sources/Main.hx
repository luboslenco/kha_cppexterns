package;

import kha.System;

// Libraries/mylib/Sources/mylib/MyLib.hx
import mylib.MyLib;

class Main {

	public static function main() {

		System.init({title: "Empty", width: 800, height: 600}, function() {
			
			// Create C++ class defined in MyLib.hx and call testFunction
			var myClass = MyClass.create();
			trace('Result: ' + myClass.testFunction());
			
			// Call static function
			trace('Result: ' + MyClass.staticFunction());
		});
	}
}
