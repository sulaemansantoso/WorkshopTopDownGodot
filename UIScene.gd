extends CanvasLayer

signal game_restart

func set_nyawa(nyawa) :
	$LiveUI/JumlahNyawa/Label2.text = str(nyawa)
	
func get_nyawa() :
	return int($LiveUI/JumlahNyawa/Label2.text)

func _ready():
	$Panel.visible = false

func hide_game_over() :
	$Panel.visible = false

func show_game_over() :
	$Panel.visible = true


func _on_Button_pressed():
	get_tree().reload_current_scene()
	emit_signal("game_restart")

	pass # Replace with function body.
