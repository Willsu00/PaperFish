extends CharacterBody2D

var is_flipped = false

func _process(_delta):
	# Get the mouse position
	var target_position = get_global_mouse_position()
	
	var viewport_rect = get_viewport_rect()
	target_position.x = clamp(target_position.x, viewport_rect.position.x, viewport_rect.end.x)
	target_position.y = clamp(target_position.y, viewport_rect.position.y, viewport_rect.end.y)
	
	# Check if the mouse has moved in the opposite direction
	if (target_position.x < position.x and not is_flipped) or (target_position.x > position.x and is_flipped):
		# Flip the object based on the direction
		scale.x *= -1
		is_flipped = not is_flipped  # Toggle the flipping state

	# Set the object position to the mouse cursor position
	position = target_position
	
