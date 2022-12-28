class_name MultiplyStatEffect
extends Effect

enum MultiOrDiv{MULTIPLY,DIVIDE}

export (MultiOrDiv) var change_type: = MultiOrDiv.MULTIPLY

var change = 0 # amount the affected stat changed by

# Item Descriptions:
# 	EFFECT_MULTIPLY_STAT   > Your current {1} is {2} by by {0} [{3}]
# 	EFFECT_MULTIPLY_DOUBLE > Your current {1} is doubled [{3}]
# 	EFFECT_MULTIPLY_HALF   > Your current {1} is halved [{3}]
# 0 = Multiplier (value)
# 1 = Stat (key)
# 2 = "multiplied/divided"
# 3 = New value after modification


func apply()->void :
	var current_stat = RunData.effects[key]
	var new_stat = current_stat

	if change_type == MultiOrDiv.MULTIPLY:
		new_stat = current_stat * value
		change = new_stat - current_stat
	elif change_type == MultiOrDiv.DIVIDE:
		new_stat = current_stat / value
		change = current_stat - new_stat

	RunData.effects[key] = new_stat


func unapply()->void :
	var current_stat = RunData.effects[key]
	var new_stat = current_stat

	if change_type == MultiOrDiv.MULTIPLY:
		new_stat = current_stat - change
	elif change_type == MultiOrDiv.DIVIDE:
		new_stat = current_stat + change

	RunData.effects[key] = new_stat


func get_args()->Array:
	var current_stat = RunData.effects[key]
	var new_stat = current_stat * value
	var multi_or_div = ""
	var change_sign = ""
	if change_type == MultiOrDiv.MULTIPLY:
		multi_or_div = "multiplied"
		change_sign = "+"
	elif change_type == MultiOrDiv.DIVIDE:
		multi_or_div = "divided"
		change_sign = "-"

	return [str(value), tr(key.to_upper()), multi_or_div, change_sign + str(change)]




#@todo: Make these do something
export (bool) var random: = false
export (int) var random_sign: = 1 # -1 = neg, 0 = zero, 1 = pos
