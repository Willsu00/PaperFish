extends Control



func _on_play_pressed():
	get_tree().change_scene_to_file("res://Scripts/Main.tscn")
	globals.player_score -= globals.player_score


func _on_how_to_play_pressed():
	get_tree().change_scene_to_file("res://HowToPlayControls.tscn")
