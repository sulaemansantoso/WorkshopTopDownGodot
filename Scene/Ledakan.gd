extends Node2D

func _ready():
	$Particles2D.emitting = true
	$Particles2D.one_shot = true

func _on_Timer_timeout():
	queue_free()	
	pass # Replace with function body.
