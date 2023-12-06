extends Timer

var enemy_scene = preload("res://EnemyModel1.tscn")
var lifetime = 15  # Adjust this to the desired lifetime in seconds
var speed = 300

func _on_timeout():
	# Create a new instance of the enemy scene
	var new_enemy = enemy_scene.instance()
	
	# Set the initial position on the edge of the left side of the screen
	new_enemy.position.x = -ProjectSettings.get_setting("display/window/size/width") / 2 + new_enemy.rect_size.x / 2
	
	# Set the velocity to move to the right
	new_enemy.linear_velocity.x = speed
	
	# Add the enemy as a child of the spawner's parent (adjust this as needed)
	get_parent().add_child(new_enemy)
	
	# Start the timer again for the next spawn
	start()

func _process(delta):
	lifetime -= delta
	
	# Check if the spawner's lifetime has expired
	if lifetime <= 0:
		queue_free()  # Destroy the spawner
