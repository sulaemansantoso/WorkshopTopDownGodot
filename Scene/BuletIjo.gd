extends RigidBody2D


func _physics_process(delta):
	if (Input.is_action_pressed("ui_accept")) :
		apply_central_impulse(Vector2(0, -100))
	pass
