extends Area2D


@export var speed = 300

func _process(delta):
	self.position.y += speed * delta


func _on_area_entered(area):
	if area.is_in_group("laser"):
		self.queue_free()  # destroy
	# why not destroy laser here ? spagetti code
		GameStateSingleton.update_score()
