extends WATTest

# has/does not have
# is/is not in range

const BaseExpectation: Script = preload("res://addons/WAT/expectations/base.gd")

func test_all_should_pass():
	expect.is_true(true, "true is true")
	expect.is_false(false, "false is false")
	expect.is_equal(1, 1, "1 == 1")
	expect.is_equal("Hello World", "Hello World", "'Hello World' == 'Hello World'")
	expect.is_equal(1.0, 1, "1 == 1.0")
	expect.is_not_equal(1, 2, "1 != 2")
	expect.is_not_equal(1.0, 2, "1.0 != 2")
	expect.is_not_equal('Hello', 'World', "'Hello' != 'World'")
	expect.is_null(null, "null == null")
	expect.is_not_null(1, "1 != null")
	expect.is_greater_than(2.0, 1, "2.0 > 1")
	expect.is_greater_than("Hello", "Bello", "Hello > Bello")
	expect.is_less_than(1, 2.0, "1 < 2.0")
	expect.is_less_than("Bello", "Hello", "Bello < Hello")
	expect.is_equal_or_greater_than(2.0, 2, "2.0 >= 2")
	expect.is_equal_or_greater_than(2.0, 1, "2.0 >= 1")
	expect.is_equal_or_less_than(2, 2.0, "2 <= 2.0")
	expect.is_equal_or_less_than(1, 2.0, "1 <= 2.0")
	expect.is_built_in_type(1, TYPE_INT, "1 is type int")
	expect.is_built_in_type(1.0, TYPE_REAL, "1 is type float")
	expect.is_not_built_in_type(1, TYPE_REAL, "1 is not type float")
	expect.is_not_built_in_type(1.0, TYPE_INT, "1.0 is not type int")
	expect.is_class_instance(self, WATTest, "self is WATTest instance")
	expect.is_not_class_instance(self, BaseExpectation, "self is not BaseExpectation")

func test_all_should_fail():
	expect.is_true(false, "false is true")
	expect.is_false(true, "true is false")
	expect.is_equal(1, 2, "1 == 2")
	expect.is_equal(1.0, 2, "1.0 == 2")
	expect.is_equal("Hello", "World", "'Hello' == 'World'")
	expect.is_not_equal(1.0, 1, "1.0 != 1")
	expect.is_not_equal('Hello World', 'Hello World', "'Hello World' != 'Hello World'")
	expect.is_not_equal(1, 1, "1 == 1")
	expect.is_null(1, "1 == null")
	expect.is_not_null(null, "null != null")
	expect.is_greater_than(1, 2.0, "1 > 2.0")
	expect.is_greater_than("Bello", "Hello", "Bello > Hello")
	expect.is_less_than(2.0, 1, "2.0 < 1")
	expect.is_less_than("Hello", "Bello", "Hello < Bello")
	expect.is_equal_or_greater_than(1, 2.0, "1 >= 2.0")
	expect.is_equal_or_less_than(2, 1, "2 > 1")
	expect.is_built_in_type(1, TYPE_REAL, "1 is type float")
	expect.is_built_in_type(1.0, TYPE_INT, "1.0 is type int")
	expect.is_not_built_in_type(1, TYPE_INT, "1 is not type int")
	expect.is_not_built_in_type(1.0, TYPE_REAL, "1.0 is not type float")
	expect.is_class_instance(self, BaseExpectation, "self is instance of BaseExpectation")
	expect.is_not_class_instance(self, WATTest, "self is not instance of WATTest")
	
	
	
	
	
	
	