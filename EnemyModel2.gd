extends Node2D

var speed = 150
var score = 100  # Adjust the speed of the object

func _ready():
	pass

func _process(delta):
	global_position.x += speed * delta

func _on_timer_timeout():
	queue_free()
