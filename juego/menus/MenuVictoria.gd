# MenuVictoria.gd
extends Control

## Metodos
func _ready():
	MusicaGlobal.musica.stop()
	$AplausosSFX.play()
	$Label.text += "%s" %DatosJuego.puntaje

## Seniales internas
func _on_BotonMenuPrincipal_pressed():
	get_tree().change_scene("res://juego/menus/MenuInicio.tscn")

func _on_BotonSalir_pressed():
	get_tree().quit()
