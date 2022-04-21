extends KinematicBody2D

export var speed = 10000

func _input(event):
	if (event is InputEventMouseButton):
		if (event.pressed == true) :
			print("mousenya diteken" + str(event.button_index))


func _process(delta):
#	var character = get_node("Character")
	if(Input.is_action_just_pressed("ui_accept")):
		print("pressed")
	if(Input.is_action_just_released("ui_accept")):
		print("release")
	
	look_at(get_global_mouse_position())
	var pergerakan = Vector2(0,0)
	
	if (Input.is_action_pressed("Kiri")):
		pergerakan = Vector2(-1,0)
		
	if (Input.is_action_pressed("Kanan")):
		pergerakan = Vector2(1,0)
		
	if (Input.is_action_pressed("Atas")):
		pergerakan += Vector2(0,-1)
		
	if (Input.is_action_pressed("Bawah")):
		pergerakan += Vector2(0,1)
		
#	position += pergerakan * speed

	
	var vector_gerak = pergerakan * speed
#	move_and_slide(vector_gerak)

	move_and_slide(vector_gerak,Vector2(0,-1), false,4,0.768,true)

	
	
	pass
