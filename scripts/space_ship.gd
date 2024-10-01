extends CharacterBody2D

const ROCKET_SCENE = preload("res://scenes/rocket.tscn")

const SPEED = 150.0

func _physics_process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		shot()
	
	var direction := Input.get_axis("ui_left", "ui_right")
	velocity.x = direction * SPEED
	move_and_slide()

func shot():
	var rocket = ROCKET_SCENE.instantiate()
	rocket.global_position = global_position + Vector2(0, -20)
	add_child(rocket)
