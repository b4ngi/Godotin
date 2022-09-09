extends Control

var nivel_actual = ""
export(String, FILE, "*.tscn") var menu_inicio = ""

func _ready():
	nivel_actual = DatosJuego.nivel_actual
	print("hola")
	#get_tree().root.add_child(self)
	DatosJuego.reset()

func _on_BotonReintentar_pressed():
	get_tree().change_scene(nivel_actual)

func _on_BotonMenuPrincipal_pressed():
	get_tree().change_scene(menu_inicio)

func _on_BotonSalir_pressed():
	get_tree().quit()
