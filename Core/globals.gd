extends Node

var points := 0
var lives := 3

func change_points(diff: int):
	points += diff
	Events.points_changed.emit(points)
	

func lives_changed(diff: int):
	lives += diff
	Events.lives_changed.emit(lives)
