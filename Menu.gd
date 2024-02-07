extends Control



func _on_play_pressed():
	get_tree().change_scene_to_file("res://Scripts/Main.tscn")
	globals.player_score -= globals.player_score
	ButtonPressedSound.play()


func _on_how_to_play_pressed():
	get_tree().change_scene_to_file("res://HowToPlayControls.tscn")
	ButtonPressedSound.play()


func _on_play_mouse_entered():
	ButtonHoverSound.play()


func _on_how_to_play_mouse_entered():
	ButtonHoverSound.play()
