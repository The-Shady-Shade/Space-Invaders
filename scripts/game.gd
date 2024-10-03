extends Node2D

@onready var game_over = preload("res://UI/game_over.tscn")

func _ready() -> void:
	Events.lives_changed.connect(func(lives): check_game_over())
	Events.enemy_died.connect(check_game_over)

func check_game_over():
	var enemies = get_tree().get_nodes_in_group("Enemy")
	if Globals.lives <= 0 || enemies.size() <= 1:
		add_child(game_over.instantiate())
