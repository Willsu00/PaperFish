extends Area2D

var speed = 200
var score = 50  # Adjust the speed of the object

func _ready():
	pass

func _process(delta):
	global_position.x += speed * delta

func _on_timer_timeout():
	queue_free()
