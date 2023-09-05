extends Area2D

@export var laser_tscn: PackedScene

func _process(_delta):
	
	var mouse_pos = get_global_mouse_position()
	position.x = mouse_pos.x
	
	
	if Input.is_action_just_pressed("click"):
		var new_laser = laser_tscn.instantiate() # exist in memory, not in the scene though
		#self.add_child(new_laser)  # self. would have saved this confusion
		add_sibling(new_laser)    # get parent , add child
		new_laser.position = self.position


func _on_area_entered(area):
	if area.is_in_group("enemy"):
		self.queue_free()
		GameStateSingleton.is_game_over = true 
