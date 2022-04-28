extends Area2D

export (String, FILE) var next_scene

func _on_Goal_body_entered(body):
	if (visible == false):
		return 
		
	$AnimationPlayer.play("Masuk")
	pass # Replace with function body.

func pindah_level() :
	get_tree().change_scene(next_scene)

func gak_ngapangapain() :
	print("hello")
