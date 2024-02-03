extends Node2D

var speed = -200 # Adjust the speed of the object
var score = 50  

func _ready():
	pass

func _process(delta):
	global_position.x += speed * delta

func _on_timer_timeout():
	queue_free()
