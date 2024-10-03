extends CanvasLayer

func _on_button_pressed():
	Globals.lives = 3
	Globals.points = 0
	get_tree().reload_current_scene()
