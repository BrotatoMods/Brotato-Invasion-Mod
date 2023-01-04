extends Node

const MOD_DIR = "Darkly77-Invasion/"
const MOD_NAME = "Darkly77-Invasion"

var dir = ""
var ext_dir = ""

func _init(modLoader = ModLoader):
	modLoader.mod_log("Init", MOD_NAME)
	dir = modLoader.UNPACKED_DIR + MOD_DIR
	# ext_dir = dir + "extensions/"

	# Add translations
	modLoader.addTranslationFromResource(dir + "translations/invasion_text.en.translation")

	# Add extensions
	# modLoader.installScriptExtension(ext_dir + "singletons/run_data.gd")
	# modLoader.installScriptExtension(ext_dir + "entities/units/player/player.gd")


func _ready():
	var ContentLoader = get_node("/root/ModLoader/Dami-ContentLoader/ContentLoader")

	# Items
	ContentLoader.load_data(dir + "content_data/invasion_items.tres", MOD_NAME)

	# Weapons - Melee
	ContentLoader.load_data(dir + "content_data/weapons_melee/alien_arm.tres", MOD_NAME) #@todo: WIP
	ContentLoader.load_data(dir + "content_data/weapons_melee/big_hand.tres", MOD_NAME)
	ContentLoader.load_data(dir + "content_data/weapons_melee/cudgel.tres", MOD_NAME)
	ContentLoader.load_data(dir + "content_data/weapons_melee/nail_bat.tres", MOD_NAME)

	# Weapons - Ranged
	ContentLoader.load_data(dir + "content_data/weapons_ranged/demon_stick.tres", MOD_NAME) #@todo: WIP
	ContentLoader.load_data(dir + "content_data/weapons_ranged/clone.tres", MOD_NAME)
	ContentLoader.load_data(dir + "content_data/weapons_ranged/metal_cannon.tres", MOD_NAME)

	ModLoader.mod_log("Done", MOD_NAME)
