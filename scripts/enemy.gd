extends CharacterBody2D

@onready var raycast_left := $RayCastLeft
@onready var raycast_right := $RayCastRight

func _physics_process(delta):
	if raycast_left.is_colliding() || raycast_right.is_colliding():
		get_tree().call_group("enemy_group", "change_direction")

func destroy():
	queue_free()
