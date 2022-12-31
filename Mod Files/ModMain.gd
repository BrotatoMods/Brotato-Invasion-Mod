extends Node

func _init(modLoader = ModLoader):
	modLoader.addTranslationFromResource("res://Darkly77-Invasion/mods/invasion_text.en.translation")
	modLoader.mod_log("Darkly77-Invasion: Initialized")
	
func _ready():
	ModLoader.mod_log("Darkly77-Invasion: readying Invasion mod.")
	var dami_helper = get_node("/root/ModLoader/dami-Helper/Helper").instance()
	ModLoader.dev_log(str("Darkly77-Invasion: inited dami_helper -> ", dami_helper))
	dami_helper.load_data("res://Darkly77-Invasion/mods/invasion_items.tres")
	dami_helper.load_data("res://Darkly77-Invasion/mods/wpn-m-big_hand.tres")
	dami_helper.load_data("res://Darkly77-Invasion/mods/wpn-m-cudgel.tres")
	dami_helper.load_data("res://Darkly77-Invasion/mods/wpn-m-nail_bat.tres")
	dami_helper.load_data("res://Darkly77-Invasion/mods/wpn-r-clone.tres")
	dami_helper.load_data("res://Darkly77-Invasion/mods/wpn-r-metal_cannon.tres")
	
	dami_helper.install_data()
	
	ModLoader.mod_log("Darkly77-Invasion: Finished loading Invasion mod.")
