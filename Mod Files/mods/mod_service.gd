extends Node

const mods_dir_path = "res://mods"

var items = []
var weapons = []
var characters = []

var modlist = "zizi"

func _ready():
	var path = OS.get_executable_path().get_base_dir()
	path += "/mods"
	
	DebugService.log_data("zizizi")
	
	var mod_dir = Directory.new()
	if mod_dir.open(path) == OK:
		mod_dir.list_dir_begin()
		var mod_name = mod_dir.get_next()
		while mod_name != "":
			if mod_name.right(mod_name.length() - 4) == ".zip" or mod_name.right(mod_name.length() - 4) == ".pck":
				modlist += ", "
				modlist += mod_name
				
				var success = ProjectSettings.load_resource_pack(path + "/" + mod_name, false)
				DebugService.log_data(str(success))
			mod_name = mod_dir.get_next()
		

	if mod_dir.open(mods_dir_path) == OK:
		DebugService.log_data(mods_dir_path)
		DebugService.log_data(str(mod_dir.file_exists("fire_greatsword_mod.tres")))
		
		mod_dir.list_dir_begin()
		var mod_data_file = mod_dir.get_next()
		while mod_data_file != "":
			DebugService.log_data(mods_dir_path + "/" + mod_data_file)
			
			var mod_data = ResourceLoader.load(mods_dir_path + "/" + mod_data_file)
			DebugService.log_data(str(mod_data))
			if mod_data is ModData:
				items.append_array(mod_data.items)
				weapons.append_array(mod_data.weapons)
				characters.append_array(mod_data.characters)
				for i in mod_data.weapons_characters.size():
					if mod_data.weapons[i]:
						var characters = mod_data.weapons_characters[i]
						for character in characters:
							character.starting_weapons.push_back(mod_data.weapons[i])
							for weapon in character.starting_weapons:
								DebugService.log_data(str(weapon.my_id))
			elif mod_data is Translation:
				TranslationServer.add_translation(mod_data)
			mod_data_file = mod_dir.get_next()
	
	DebugService.log_data(str(weapons))
	ItemService.items.append_array(items)
	ItemService.weapons.append_array(weapons)
	ItemService.characters.append_array(characters)
	for character in ItemService.characters:
		if character.my_id == "character_mage":
			for weapon in character.starting_weapons:
				DebugService.log_data(weapon.my_id)
	ItemService.init_unlocked_pool()
	add_unlocked_by_default_without_leak()
	ProgressData.load_game_file()
	
	
func add_unlocked_by_default_without_leak():
	
	for item in items:
		if item.unlocked_by_default and not ProgressData.items_unlocked.has(item.my_id):
			ProgressData.items_unlocked.push_back(item.my_id)
	
	for weapon in weapons:
		if weapon.unlocked_by_default and not ProgressData.weapons_unlocked.has(weapon.weapon_id):
			ProgressData.weapons_unlocked.push_back(weapon.weapon_id)
	
	for character in characters:
		if character.unlocked_by_default and not ProgressData.characters_unlocked.has(character.my_id):
			ProgressData.characters_unlocked.push_back(character.my_id)
	
