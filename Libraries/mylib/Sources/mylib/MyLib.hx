package mylib;

@:include("MyClass.h")
@:native("MyClass")
@:unreflective
@:structAccess
extern class MyClass {
	@:native("MyClass")
	public static function create():MyClass;
	
	public function testFunction():Int;

	@:native("MyClass::staticFunction")
	public static function staticFunction():Int;
}
