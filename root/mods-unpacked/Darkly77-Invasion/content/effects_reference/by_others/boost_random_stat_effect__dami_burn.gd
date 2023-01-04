class_name BoostRandomStatEffect
extends Effect


const stats = {
	"stat_max_hp":0.6, 
	"stat_armor":0.2, 
	"stat_crit_chance":0.6, 
	"stat_luck":1, 
	"stat_attack_speed":1.2, 
	"stat_elemental_damage":0.2, 
	"stat_hp_regeneration":0.3, 
	"stat_lifesteal":0.2, 
	"stat_melee_damage":0.4, 
	"stat_percent_damage":1, 
	"stat_dodge":0.6, 
	"stat_engineering":0.3, 
	"stat_range":3, 
	"stat_ranged_damage":0.2, 
	"stat_speed":0.6, 
}


func apply()->void :
	key = Utils.get_rand_element(stats.keys())
	RunData.effects[key] += (value * stats[key]) as int


func unapply()->void :
	RunData.effects[key] -= (value * stats[key]) as int
	key = ""


func get_args()->Array:
	return [str(value), tr(key)]


