class_name WeaponSlotAddEffect
extends Effect

# value = increase slots by x (translation arg: 0)
# key   = UNUSED   (translation arg: 1)

var expand_max_slots = false  # true if max_*_weapons is not the default (eg. Generalist)
var expand_melee     = false  # true if max_melee_weapons should be increased
var expand_ranged    = false  # true if max_ranged_weapons should be increased


func apply()->void :
	RunData.effects["weapon_slot"] += value
	expand_max_slots = false
	expand_melee = false
	expand_ranged = false
	apply_max_weapon_fix()


func unapply()->void :
	RunData.effects["weapon_slot"] -= value

	if expand_max_slots:
		if expand_melee:
			RunData.effects["max_melee_weapons"] -= value
		elif expand_ranged:
			RunData.effects["max_ranged_weapons"] -= value


func get_args()->Array:
	return ["+" + str(value)]


# Fixes for Generalist ()
# See: generalist_effect_3, generalist_effect_4
# See: run_data.gd > has_weapon_slot_available
# @todo: Check for "no_ranged_weapons" + "no_melee_weapons"
func apply_max_weapon_fix():
	var could_update_melee = RunData.effects["max_melee_weapons"] < 999
	var could_update_ranged = RunData.effects["max_ranged_weapons"] < 999

	if could_update_melee || could_update_ranged:
		expand_max_slots = true

	if !expand_max_slots:
		return
	else:
		# Could update either
		if could_update_melee && could_update_ranged:
			# If max melee is odd (eg 3), update melee, otherwise update ranged
			# This means that for Generalist, melee is expanded first, followed by range
			if RunData.effects["max_melee_weapons"] % 2 == 1:
				expand_melee = true
				expand_ranged = false
			else:
				expand_melee = false
				expand_ranged = true
		# ONLY update melee (as max_ranged is still the default)
		elif could_update_melee && !could_update_ranged:
			expand_melee = true
			expand_ranged = false
		# ONLY update ranged (as max_melee is still the default)
		elif !could_update_melee && could_update_ranged:
			expand_melee = false
			expand_ranged = true

		# EXPAND SLOTS!
		if expand_melee:
			RunData.effects["max_melee_weapons"] += value
		elif expand_ranged:
			RunData.effects["max_ranged_weapons"] += value
