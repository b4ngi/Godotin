extends Node

onready var musica: AudioStreamPlayer = $AudioStreamPlayer

func replay():
	musica.stop()
	musica.play()
