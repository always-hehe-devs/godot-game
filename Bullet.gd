extends Area2D

var travelled_distance = 0;

func _physics_process(delta):
	var direction = Vector2.RIGHT.rotated(rotation)
	position += direction * 1000 * delta
	
	travelled_distance += 1000 * delta
	
	if travelled_distance > 1200:
		queue_free()
	


func _on_body_entered(body):
	queue_free()
	
	if body.has_method("take_damage"):
		body.take_damage()

