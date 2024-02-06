extends Control

@onready var scoreLabel = $Score

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	scoreLabel.text = "Score: \n%d" % globals.player_score


func _on_play_again_pressed():
	get_tree().change_scene_to_file("res://Scripts/Main.tscn")
	globals.player_score -= globals.player_score


func _on_main_menu_pressed():
	get_tree().change_scene_to_file("res://menu.tscn")
