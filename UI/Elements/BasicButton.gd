tool
extends Button

export(String, FILE, "*.tscn") var path_to_scene_to_be_loaded


func _get_configuration_warning() -> String:
	if not path_to_scene_to_be_loaded:
		return "There is no Scene asigned to be Loaded!"
	
	return ""


func _on_button_up() -> void:
	var new_scene := load(path_to_scene_to_be_loaded)

	get_tree().change_scene_to(new_scene)
