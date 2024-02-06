extends Area2D


var speed = 350

func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	global_position.x += speed * delta

func _on_timer_timeout():
	queue_free()


func _on_body_entered(body):
	if body.is_in_group("Player"):
		if globals.player_score >= 2500:
			self.queue_free()
			globals.player_score += globals.enemy_rare
			print(globals.player_score)
		else:
			body.queue_free()
