extends Area2D #Angler.tscn

var speed = 85

func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	global_position.x += speed * delta

func _on_timer_timeout():
	queue_free()


func _on_body_entered(body):
	if body.is_in_group("Player"):
		body.queue_free()
		get_tree().change_scene_to_file("res://GameOver.tscn")
