extends Control

func _on_to_menu_pressed():
	get_tree().change_scene_to_file("res://menu.tscn")

func _on_to_next_htp_pressed():
	get_tree().change_scene_to_file("res://HowToPlay2.tscn")


func _on_back_pressed():
	get_tree().change_scene_to_file("res://HowToPlayControls.tscn")
