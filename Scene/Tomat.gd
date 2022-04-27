extends KinematicBody2D

export var speed = 10000
export var nyawa = 3 

signal pemain_terpukul
signal pemain_mati

func terluka(point) :
	nyawa -= point
	emit_signal("pemain_terpukul", nyawa)
	if (nyawa <=0 ):
		emit_signal("pemain_mati")

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
	
	var pergerakan = Vector2(0,0)
	
	if (Input.is_action_pressed("Kiri")):
		look_at( position + Vector2(-1,0))
		pergerakan = Vector2(-1,0)
		
	if (Input.is_action_pressed("Kanan")):
		look_at( position + Vector2(1,0))
		pergerakan = Vector2(1,0)
		
	if (Input.is_action_pressed("Atas")):
		look_at( position + Vector2(0,-1))
		pergerakan += Vector2(0,-1)
		
	if (Input.is_action_pressed("Bawah")):
		look_at( position + Vector2(0,1))
		pergerakan += Vector2(0,1)
		
#	position += pergerakan * speed

	
	var vector_gerak = pergerakan * speed
#	move_and_slide(vector_gerak)

	move_and_slide(vector_gerak,Vector2(0,-1), false,4,0.768,true)

	
	
	pass
