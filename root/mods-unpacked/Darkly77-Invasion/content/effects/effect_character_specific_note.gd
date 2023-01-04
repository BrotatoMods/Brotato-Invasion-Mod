class_name CharacterNoteEffect
extends Effect

# Effect: Character Note
# Info:   Uses key in place of text_key, if the current player character matches
#         one of the characters in the `characters` array. Otherwise shows nothing

## TESTING
export (Array, Resource) var characters = [] # Array of characters (character_data files)
export (bool) var grey_text = true      # If true, makes the text grey
export (bool) var add_linebreak = false # If true, adds a line break before the text


func apply()->void :
	pass


func unapply()->void :
	pass


func get_args()->Array:
	# NIL until the run starts, so required here to avoid a crash
	if !RunData.current_character:
		return []

	if characters.size() == 0:
		return []

	var apply_text = false
	var characters_list = []

	# Loop over characters, check if any match the current character
	for character_data in characters:
		characters_list.push_back(tr(character_data.name))

		if character_data.my_id == RunData.current_character.my_id:
			apply_text = true

	# No match: Set to empty, which stops it showing (this is a vanilla feature)
	if !apply_text:
		text_key = "[EMPTY]"
		return []
	else:
		text_key = key
		# {0} = value (if set)
		# {1} = Name of the current character
		# {2} = Name of all characters this note applies to
		return [str(value), tr(RunData.current_character.name), arr_join(characters_list, ", ")]


func get_text(colored:bool = true)->String:
	var text = .get_text(colored)
	if text_key != "" && text_key != "[EMPTY]":
		if grey_text:
			text = text_color_grey(text)
		if add_linebreak:
			text = "\n" + text
	return text


# @TODO: Make a utility func for this and others like it
func text_color_grey(text:String)->String:
	return "[color=#555555]" + text + "[/color]"


# Join an array as a string
# https://godotengine.org/qa/20058/elegant-way-to-create-string-from-array-items
func arr_join(arr, separator = ""):
	var output = "";
	for s in arr:
		output += str(s) + separator
	output = output.left( output.length() - separator.length() )
	return output
