# kha_cppexterns

Example on including C++ code and creating Haxe externs to call it. A simple class is defined in `Libraries/mylib` and added to `khafile.js`.

```cpp
class MyClass {
public:
	MyClass();
	int testFunction(); // return 6
	static int staticFunction(); // return 7
};
```

Defining Haxe externs:
```hx
// ...
extern class MyClass {
	@:native("MyClass")
	public static function create():MyClass;
	
	public function testFunction():Int;

	@:native("MyClass::staticFunction")
	public static function staticFunction():Int;
}
```

Afterwards, C++ class is accessed from Haxe:

```hx
// ...
var result = 0;

// Create C++ class defined in MyLib.hx and call testFunction
var myClass = MyClass.create();
trace('Result: ' + myClass.testFunction());
			
// Call static function
trace('Result: ' + MyClass.staticFunction());
// ...
```

Clone repository and run:

```
git clone --recursive https://github.com/luboslenco/kha_callcpp
node Kha/make --run
```

Expected output:

```
Main.hx:18: Result: 6
Main.hx:21: Result: 7
```
