extends Control

func _on_to_menu_pressed():
	get_tree().change_scene_to_file("res://menu.tscn")
	ButtonPressedSound.play()

func _on_to_next_htp_pressed():
	get_tree().change_scene_to_file("res://HowToPlay1.tscn")
	ButtonPressedSound.play()


func _on_to_next_htp_mouse_entered():
	ButtonHoverSound.play()


func _on_to_menu_mouse_entered():
	ButtonHoverSound.play()
