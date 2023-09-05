extends Node2D

@export var speed = 200

func _process(delta):
	
	# self.position.y +=  2  magic number

	self.position.y -= speed * delta
	
	# framerate dependence


func _on_area_entered(colidedWith_area):
	if colidedWith_area.is_in_group("enemy"):
		self.queue_free()
