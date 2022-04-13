extends Node2D

export var speed = 3

func _ready():
	var tomat_node = get_node("Tomat")
	tomat_node.scale = Vector2(0.3,0.3)
	pass
	

func _process(delta):
#	var character = get_node("Character")
	var character = $Character
	
	if (Input.is_action_pressed("ui_left")):
		character.play("Kiri")
		$Character.position.x -= speed
	if (Input.is_action_pressed("ui_right")):
		$Character.play("Kanan")
		$Character.position.x += speed
	if (Input.is_action_pressed("ui_down")):
		$Character.play("Bawah")
		$Character.position.y += speed
	if (Input.is_action_pressed("ui_up")):
		$Character.play("Atas")
		$Character.position.y -= speed
		
	
	pass
