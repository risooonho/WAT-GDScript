extends WATT

func test_expect_is_true_all_of_these_should_pass():
	expect.is_true((true), "true is true")
	expect.is_true((true != false), "true is not false")
	expect.is_true((true != null), "true is not null")
	expect.is_true((1 is int), "1 is an Integer")
	expect.is_true((1.0 is float), "1.0 is a float")
	expect.is_true(("String" is String), '"String" is a String')
	expect.is_true(([] is Array), "[] is an Array")
	expect.is_true(({} is Dictionary), "{} is a Dictionary")
	expect.is_true((Vector2(0, 0) is Vector2), "Vector2(0, 0) is Vector2")
	expect.is_true((Vector3(0, 0, 0) is Vector3), "Vector3(0, 0, 0) is Vector3")
	
func test_expect_is_true_all_of_these_should_fail():
	var bad: Dictionary = {"integer": 1.0, "floating": 1, "string": 1, "vec2": [], "vec3": [], "array": {}, "dict": []}
	expect.is_true((false), "true is true")
	expect.is_true((true == false), "true is not false")
	expect.is_true((true == null), "true is not null")
	expect.is_true((bad.integer is int), "1 is int")
	expect.is_true((bad.floating is float), "1.0 is float")
	expect.is_true((bad.string is String), '"1" is String')
	expect.is_true((bad.vec2 is Vector2), "Vector2(0, 0) is Vector2")
	expect.is_true((bad.vec3 is Vector3), "Vector3(0, 0, 0) is Vector3")
	expect.is_true((bad.array is Array), "[] is Array")
	expect.is_true((bad.dict is Dictionary), "{} is Dictionary")