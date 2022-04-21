extends Area2D

export var nilai_coin = 10

signal coin_collected
signal coin_baru_ada

func koin_terambil() :
	emit_signal("coin_collected", nilai_coin)
	queue_free()

func _on_Node2D_body_entered(body):
	if (body is KinematicBody2D):
#		queue_free()
		$AnimationPlayer.play("Collected")
	pass # Replace with function body.
