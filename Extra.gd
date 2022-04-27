extends Node2D
tool

export var positions = []

func _draw():
	for p in positions :
		draw_circle(p.position, 50, Color(1,0,0))
	pass
