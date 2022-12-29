class_name GiftEffect
extends Effect

# value = no. of free items (translation arg: 0)
# key   = UNUSED   (translation arg: 1)
var has_found_items = false
var has_added_items = false
var items_arr = []


func apply()->void :
	# Find 3 random items
	if !has_found_items:
		for i in value:
			var item_data = Utils.get_rand_element(ItemService.items)
			items_arr.push_back(item_data)
			has_found_items = true

	# Add the items to player inventory
	if !has_added_items:
		for i in items_arr.size():
			var item_data = items_arr[i]
			RunData.add_item(item_data)


func unapply()->void :
	# Remove items from inventory
	if has_added_items:
		for i in items_arr.size():
			var item_data = items_arr[i]
			RunData.add_item(item_data)

	has_found_items = false
	has_added_items = false
	items_arr = []



func get_args()->Array:
	if has_found_items == false:
		return [green_text(str(value)), "UNUSED", ""]
	else:
		var items_str = ""
		for i in items_arr.size():
			var item_data = items_arr[i]
			var item_text = "\nItem " + str(i+1) + ": " + green_text(tr(item_data.name))
			items_str += item_text

		return [str(value), "UNUSED", items_str]


func green_text(text:String)->String:
	return "[color=#00ff00]" + text + "[/color]"
