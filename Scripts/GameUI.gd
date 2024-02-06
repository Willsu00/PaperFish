extends Control

@onready var scoreLabel = $Score

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	scoreLabel.text = "Score: %d" % globals.player_score
	if globals.player_score == 1000:
		$Score.set("theme_override_colors/font_color", Color(0, 0, 205))
	elif globals.player_score >=2500:
		$Score.set("theme_override_colors/font_color", Color(0, 153, 0))
