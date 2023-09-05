extends Label



func _process(delta):
	if GameStateSingleton.is_game_over:
		self.visible = true
		
		
	if  GameStateSingleton.is_game_over and Input.is_action_just_pressed("click") :
		#reload scene
		GameStateSingleton.reload_state()
		get_tree().reload_current_scene()
