extends Node

var score = 0
var is_game_over = false

func update_score():
	score += 10



func reload_state():
	self.score = 0
	self.is_game_over = false
