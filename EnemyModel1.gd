extends Node2D

var speed = 100  # Adjust the speed of the object

func _ready():
	# Set the initial position of the object to a random y position on the very left
	position.y = randi() % 900
	position.x = 0

func _process(delta):
	# Move the object to the right
	position.x += speed * delta

	# Check if the object is out of bounds on the right side
	if position.x > 1600:
		queue_free()  # Destroy the object when it reaches the very end
