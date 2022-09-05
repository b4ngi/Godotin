# Sierra.gd
class_name Sierra
extends Area

func _ready():
	pass

func _on_body_entered(body):
	var player: Godotin = body
	player.respawn()
