extends Node2D

var scale_factor = 1
var point = 0

onready var kamera = $Tomat/Camera2D

func _ready():
	kamera.zoom = Vector2(scale_factor, scale_factor)
	var kump_coin = $Coins.get_children()
	for coin_satu in kump_coin :
		coin_satu.connect("coin_collected",self, "_on_Coin_coin_collected")
	
	

func _process(delta):
	if (Input.is_action_pressed("ui_left")) :
		scale_factor -= 0.01
		kamera.zoom = Vector2(scale_factor, scale_factor)
		pass
	elif (Input.is_action_pressed("ui_right")) :
		scale_factor += 0.01
		kamera.zoom = Vector2(scale_factor, scale_factor)
		pass


func _kalo_ada_mouse_lewat():
	print ("mouse lewat")
	pass # Replace with function body.


func _on_Tomat_ready():
	print("tomat ready")
	pass # Replace with function body.


func _on_Button_pressed():
	
	var tomat_node = load("res://Scene/Tomat.tscn")
	var tomat_instance = tomat_node.instance()
	tomat_instance.position = get_global_mouse_position()
	add_child(tomat_instance)
	
	pass # Replace with function body.

func on_body_exit(body) :
	print(str(body) + " keluar ")
	pass


func _on_Gravitasi_body_entered(body):
	print(str(body) + "masuk")
	pass # Replace with function body.


func _on_Coin_coin_collected(nilai_coin):
	point += nilai_coin
	print ("point sekarang  :  "+ str(point))
	pass # Replace with function body.
