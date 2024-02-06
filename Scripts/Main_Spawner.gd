# Main_Spawner.gd (in the main scene)

extends Node2D

var enemies = [
	preload("res://EnemyModel1.tscn"), #Common Enemy x3 Rate
	preload("res://EnemyModel1.tscn"),
	preload("res://EnemyModel1.tscn"),
	preload("res://EnemyModel2.tscn"), #Uncommon Enemy x2 Rate
	preload("res://EnemyModel2.tscn"),
	preload("res://EnemyModel3.tscn"), #Rare Enemy x1 Rate
	preload("res://Bomb.tscn")         #Hazards x1 Rate
	
]

var enemies_right = [
	preload("res://EnemyModel1R.tscn"),
	preload("res://EnemyModel1R.tscn"),
	preload("res://EnemyModel1R.tscn"),
	preload("res://EnemyModel2R.tscn"),
	preload("res://EnemyModel3R.tscn"),
	preload("res://BombR.tscn")

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
	timer.wait_time = 30
	timer.one_shot = true
	print(timer.wait_time)
	
	var callable = Callable(enemy_instance, "_on_timer_timeout")
	timer.timeout.connect(callable)
	enemy_instance.add_child(timer)
	timer.start()
	
func _on_spawn_timer_timeout_right():
	var enemy_spawn_right = randi_range(0, enemies_right.size() - 1)
	var enemy_instance_right = enemies_right[enemy_spawn_right].instantiate()
	enemy_instance_right.position = $SpawnlocationRight.position
	add_child(enemy_instance_right)
	
	var nodes = get_tree().get_nodes_in_group("spawn_right")
	var spawn_node_right = nodes[randi() % nodes.size()]
	var spawn_position_right = spawn_node_right.position
	$SpawnlocationRight.position = spawn_position_right
	
	var timer_right = Timer.new()
	timer_right.wait_time = 30
	timer_right.one_shot = true
	print(timer_right.wait_time)
	
	var callable = Callable(enemy_instance_right, "_on_timer_timeout")
	timer_right.timeout.connect(callable)
	enemy_instance_right.add_child(timer_right)
	timer_right.start()

func _on_timer_timeout():
	var enemy = get_parent()
	enemy.queue_free()
	

