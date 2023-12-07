extends Node2D

var object_scene : PackedScene = preload("res://EnemyModel1.tscn")
var spawn_interval : float = 2.0  # Set the interval between spawns
var time_since_last_spawn : float = 0.0

func _process(delta: float) -> void:
	time_since_last_spawn += delta

	# Check if it's time to spawn a new object
	if time_since_last_spawn > spawn_interval:
		var new_object : Node2D = object_scene.instance()  # Corrected line
		add_child(new_object)
		time_since_last_spawn = 0.0
