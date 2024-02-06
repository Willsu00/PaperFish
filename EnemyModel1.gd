extends Area2D #EnemyModel1.tscn

var speed = 200

func _ready():
	pass

func _process(delta):
	global_position.x += speed * delta

func _on_timer_timeout():
	queue_free()


func _on_body_entered(body):
	if body.is_in_group("Player"):
		self.queue_free()
		globals.player_score += globals.enemy_common
		print(globals.player_score)
		

