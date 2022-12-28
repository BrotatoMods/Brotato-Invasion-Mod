class_name RandomNegativeStatHalfEffect
extends Effect

# value = increase      (translation: 0)
# key   = affected stat (translation: 1)

const all_stats = [
	"stat_max_hp",
	"stat_armor",
	"stat_crit_chance",
	"stat_luck",
	"stat_attack_speed",
	"stat_elemental_damage",
	"stat_hp_regeneration",
	"stat_lifesteal",
	"stat_melee_damage",
	"stat_percent_damage",
	"stat_dodge",
	"stat_engineering",
	"stat_range",
	"stat_ranged_damage",
	"stat_speed",
]


func apply()->void :
	var neg_stats = find_negative_stats()
	if neg_stats.size() > 0:
		key = Utils.get_rand_element(neg_stats)
		var curr_value = RunData.effects[key]
		value = abs(curr_value) / 2
		RunData.effects[key] += value as int


func unapply()->void :
	if value > 0:
		RunData.effects[key] -= value as int
		key = ""
		value = 0


func get_args()->Array:
	if key == "":
		return ["???", "???"]
	else:
		return [str(value), tr(key.to_upper())]


func find_negative_stats()->Array:
	var neg_stats = []
	for i in all_stats.size():
		var stat_key = all_stats[i]
		var stat_val = RunData.effects[stat_key]
		var stat_sign = sign(stat_val) # -1 = neg, 0 = zero, 1 = pos
		if stat_sign == -1:
			neg_stats.push_back(stat_key)
	return neg_stats

# @todo: Use this instead of `find_negative_stats`
# target_stat_sign: -1 = neg, 0 = zero, 1 = pos
func find_stats_by_sign(target_stat_sign:int)->Array:
	var found_stats = []
	for i in all_stats.size():
		var stat_key = all_stats[i]
		var stat_val = RunData.effects[stat_key]
		var stat_sign = sign(stat_val) # -1 = neg, 0 = zero, 1 = pos
		if stat_sign == target_stat_sign:
			found_stats.push_back(stat_key)
	return found_stats
