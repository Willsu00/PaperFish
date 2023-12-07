# Main_Spawner.gd (in the main scene)

extends Node2D

var enemies = [
	preload("res://EnemyModel1.tscn"),
	preload("res://EnemyModel2.tscn"),
	preload("res://EnemyModel3.tscn")
]

func _ready():
	pass

func _on_spawn_timer_timeout():
	var enemy_spawn = randi_range(0, enemies.size() - 1)
	var enemy_instance = enemies[enemy_spawn].instantiate()
	enemy_instance.position = $Spawnlocation.position
	add_child(enemy_instance)

	var nodes = get_tree().get_nodes_in_group("spawn")
	var spawn_node = nodes[randi() % nodes.size()]
	var spawn_position = spawn_node.position
	$Spawnlocation.position = spawn_position
	
	var timer = Timer.new()
	timer.wait_time = 30.0
	timer.one_shot = true
	
	var callable = Callable(enemy_instance, "_on_timer_timeout")
	timer.timeout.connect(callable)
	enemy_instance.add_child(timer)
	timer.start()
	
func _on_timer_timeout():
	var enemy = get_parent()
	enemy.queue_free()
	
	

