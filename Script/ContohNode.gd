extends Node2D
var health_point : int = 100
var array_bilangan = []

func fungsi_saya(bil1 : int , bil2 : int) -> int :
	print(str(bil1+ bil2))
	return bil1 + bil2

func _ready():
	var hasil = fungsi_saya(2, 3)
	print(hasil)

