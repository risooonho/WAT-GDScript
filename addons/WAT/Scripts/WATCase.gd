extends Node
class_name WATCase

var details: String
var success: bool = true
var _tests: Dictionary = {}
var _current_method: String
	
func add_method(method: String) -> void:
	# Called by the Test Script
	self._current_method = method
	self._tests[method] = {"details": method, "success": true, "expectations": []}
	
func _add_expectation(success: bool, expectation: String) -> void:
	# Called via signal from expectations.gd
	self._tests[self._current_method].expectations.append({"details": expectation, "success": success})
	if not success:
		self._tests[self._current_method].success = false
		
func tests() -> Array:
	return self._tests.values()