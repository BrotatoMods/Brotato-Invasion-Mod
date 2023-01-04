class_name StartingItemFromArrayEffect
extends Effect

export (Array, Resource) var items = []


static func get_id()->String:
	return "starting_item_from_array"


func apply()->void :
	RunData.effects[key].push_back(items)


func unapply()->void :
	RunData.effects[key].erase(items)


func get_args()->Array:
	var ret = []
	for item in items:
		ret.append(Text.text(item.name))
	return ret
