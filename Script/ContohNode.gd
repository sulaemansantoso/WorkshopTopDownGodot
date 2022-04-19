extends Node2D

var scale_factor = 1

onready var kamera = $Tomat/Camera2D

func _ready():
	kamera.zoom = Vector2(scale_factor, scale_factor)


func _process(delta):
	if (Input.is_action_pressed("ui_left")) :
		scale_factor -= 0.01
		kamera.zoom = Vector2(scale_factor, scale_factor)
		pass
	elif (Input.is_action_pressed("ui_right")) :
		scale_factor += 0.01
		kamera.zoom = Vector2(scale_factor, scale_factor)
		pass
