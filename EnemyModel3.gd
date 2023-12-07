extends Node2D


var speed = 250
var score = 120

func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	global_position.x += speed * delta

func _on_timer_timeout():
	queue_free()
