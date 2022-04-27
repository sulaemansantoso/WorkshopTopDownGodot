extends Node2D


var scale_factor = 1
var point = 0
export var batas = 50
var lives = 3


onready var kamera = $Tomat/Camera2D
onready var point_label = $UI/PointUI/PointLabel
var ledakan_node = preload("res://Scene/Ledakan.tscn")

func _ready():
	get_tree().paused = false
	$Tomat.position = $Start.position
	kamera.zoom = Vector2(scale_factor, scale_factor)
	var kump_coin = $KumpCoin.get_children()
	for coin_satu in kump_coin :
		coin_satu.connect("coin_collected",self, "_on_Coin_coin_collected")
	$Tomat.connect("pemain_terpukul", self, "update_pemain")
	$UI.set_nyawa(lives)
	point = Statistik.point_global
	point_label.text = str(Statistik.point_global)
	

func update_pemain(nyawa):
	var ledakan_temp = ledakan_node.instance()
	ledakan_temp.position = $Tomat.position
	add_child(ledakan_temp)
	
	$Tomat.position = $Start.position	
	if (lives <= 1) :
		print("game over")
		$UI.show_game_over()
		get_tree().paused = true
		return
		
	lives = lives -1
	$UI.set_nyawa(lives)
	pass

func _process(delta):
	update()
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
	pass


func _on_Gravitasi_body_entered(body):
	
	pass # Replace with function body.


func _on_Coin_coin_collected(nilai_coin):
	point += nilai_coin
	if (point >  batas) :
		$Goal.visible = true
	Statistik.point_global = point
		
	point_label.text = str(Statistik.point_global)
	
	pass # Replace with function body.
