# MenuInicio.gd
tool
extends Control

export(String, FILE, "*.tscn") var menu_ajustes = ""


func _on_BotonSalir_pressed() -> void:
	get_tree().quit()

func _on_BotonOpciones_pressed() -> void:
	$BotonSFX.play()
	get_tree().change_scene(menu_ajustes)

func _get_configuration_warning() -> String:
	if menu_ajustes == "":
		return "Chequear rutas"
	return ""