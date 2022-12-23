class_name RandomNegativeStatHalfEffect
extends Effect

# value = increase      (translation: 0)
# key   = affected stat (translation: 1)

const stats = [
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
	for i in stats.size():
		var stat_key = stats[i]
		var stat_val = RunData.effects[stat_key]
		var stat_sign = sign(stat_val) # -1 = neg, 0 = zero, 1 = pos
		print(stat_key + "=" + str(stat_val) + "("+ str(stat_sign) +")")
		if stat_sign == -1:
			neg_stats.push_back(stat_key)
	print(neg_stats)
	return neg_stats
