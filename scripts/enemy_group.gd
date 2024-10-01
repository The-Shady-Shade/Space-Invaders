extends Node2D

const ROW_STEP = 10.0
const SPD_BOOST = 2.5

@onready var block_timer := $BlockTimer

var direction := Vector2.RIGHT
var spd := 5.0

func _process(delta):
	global_position += direction * spd * delta

func change_direction():
	if block_timer.time_left > 0:
		return
	direction = Vector2.LEFT if direction == Vector2.RIGHT else Vector2.RIGHT
	global_position.y += ROW_STEP
	spd += SPD_BOOST
	block_timer.start()
