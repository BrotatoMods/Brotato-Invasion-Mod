class_name OnHealingTestEffect
extends Effect


func apply()->void :
	var _error_gold_changed = RunData.connect("gold_changed", self, "_on_gold_changed")
	print("effect_on_healing_test:" + "APPLIED")
	pass


func unapply()->void :
	RunData.disconnect("gold_changed", self, "_on_gold_changed")
	pass


func get_args()->Array:
	return [str(value), tr(key.to_upper())]


func _on_gold_changed(new_value:int)->void :
	var amount = str(new_value)
	print("effect_on_healing_test:" + "CHANGED=" + str(amount))
