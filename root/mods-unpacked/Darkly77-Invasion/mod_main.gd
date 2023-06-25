extends Node

const MOD_DIR = "Darkly77-Invasion/"
const INVASION_LOG = "Darkly77-Invasion"

var dir = ""
var ext_dir = ""

func _init(modLoader = ModLoader):
	ModLoaderLog.info("Init", INVASION_LOG)
	dir = ModLoaderMod.get_unpacked_dir() + MOD_DIR
	# ext_dir = dir + "extensions/"

	# Add translations
	ModLoaderMod.add_translation(dir + "translations/invasion_text.en.translation")


func _ready():
	var ContentLoader = get_node("/root/ModLoader/Darkly77-ContentLoader/ContentLoader")

	# Items
	ContentLoader.load_data(dir + "content_data/invasion_items.tres", INVASION_LOG)

	# Weapons - Melee
	ContentLoader.load_data(dir + "content_data/weapons_melee/alien_arm.tres", INVASION_LOG) #@todo: WIP
	ContentLoader.load_data(dir + "content_data/weapons_melee/big_hand.tres", INVASION_LOG)
	ContentLoader.load_data(dir + "content_data/weapons_melee/cudgel.tres", INVASION_LOG)
	ContentLoader.load_data(dir + "content_data/weapons_melee/nail_bat.tres", INVASION_LOG)

	# Weapons - Ranged
	ContentLoader.load_data(dir + "content_data/weapons_ranged/demon_stick.tres", INVASION_LOG) #@todo: WIP
	ContentLoader.load_data(dir + "content_data/weapons_ranged/clone.tres", INVASION_LOG)
	ContentLoader.load_data(dir + "content_data/weapons_ranged/metal_cannon.tres", INVASION_LOG)

	# Sets (aka Weapon Classes)
	ContentLoader.load_data(dir + "content_data/invasion_sets.tres", INVASION_LOG)

	# Challenges
	ContentLoader.load_data(dir + "content_data/invasion_challenges.tres", INVASION_LOG)

	# Characters @todo
	# ContentLoader.load_data(dir + "content_data/invasion_characters.tres", INVASION_LOG)

	# Tests
	# ContentLoader.load_data(dir + "content_data/tests/tests_challenges.tres", INVASION_LOG)
	# ContentLoader.load_data(dir + "content_data/tests/tests_items.tres", INVASION_LOG)
	# ContentLoader.load_data(dir + "content_data/tests/tests_weapons_melee.tres", INVASION_LOG)
	# ContentLoader.load_data(dir + "content_data/tests/tests_weapons_ranged.tres", INVASION_LOG)

	ModLoaderLog.info("Done", INVASION_LOG)
