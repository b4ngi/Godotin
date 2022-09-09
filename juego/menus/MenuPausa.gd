extends Control

export(String, FILE, "*.tscn") var menu_ajustes = ""
export(String, FILE, "*.tscn") var menu_inicio = ""

func _ready():
	visible = false

func _input(event):
	if event.is_action_pressed("pausa"):
		visible = not visible
		get_tree().paused = not get_tree().paused
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)

func _on_BotonContinuar_pressed():
	get_tree().paused = false
	visible = false
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _on_BotonMenu_pressed() -> void:
# warning-ignore:return_value_discarded
	get_tree().paused = false
	get_tree().change_scene(menu_inicio)

func _on_BotonSalir_pressed() -> void:
	get_tree().quit()
