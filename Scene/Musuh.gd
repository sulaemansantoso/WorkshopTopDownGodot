extends Area2D

export(Vector2) var tujuan = Vector2.ZERO 
var posisi_awal = Vector2.ZERO
var is_maju = true
var arah : Vector2 = Vector2.ZERO
export var speed = 1

func _ready():
	posisi_awal = position
	pass
	

	
func _physics_process(delta):

	if (is_maju) :
		arah = tujuan - posisi_awal
		arah = arah.normalized()
		position = position + (arah * speed)
		
		$Sprite.look_at(position + arah)
		
		var selisih = tujuan - position
		
		if (selisih.length() < speed) :
			is_maju = false
		pass
	else : #mundur
		arah = posisi_awal - tujuan
		arah = arah.normalized()
		position = position + (arah * speed)
		
		$Sprite.look_at(position + arah)
		
		var selisih = posisi_awal - position
		
		if (selisih.length() < speed) :
			is_maju = true
		pass
	pass


func _on_Musuh_body_entered(body):
	if (body.is_in_group("pemain")):
		if (body.has_method("terluka")) :
			body.terluka(1)
		$AnimationPlayer.play("Makan")
	
	pass # Replace with function body.
