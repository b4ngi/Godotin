extends Control


func _ready():
	$Label.text += "%s" %DatosJuego.puntaje

func _on_BotonMenuPrincipal_pressed():
	get_tree().change_scene("res://juego/menus/MenuInicio.tscn")

func _on_BotonSalir_pressed():
	get_tree().quit()