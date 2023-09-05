extends Node2D

@export var enemy_tscn: PackedScene 

func spawn_enemy():
	var new_enemy = enemy_tscn.instantiate()
	
	new_enemy.position.y = randi_range(-50,-350)
	new_enemy.position.x = randi_range(0,get_viewport_rect().size.x)
	self.add_child(new_enemy)
	
