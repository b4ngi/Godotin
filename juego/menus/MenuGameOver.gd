extends Control

## Atributos
var nivel_actual = ""

## Atributos export
export(String, FILE, "*.tscn") var menu_inicio = ""

## Metodos
func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	nivel_actual = DatosJuego.nivel_actual
	DatosJuego.primera_vez_nivel = true
	DatosJuego.reset()

## Seniales internas
func _on_BotonReintentar_pressed():
	get_tree().change_scene(nivel_actual)

func _on_BotonMenuPrincipal_pressed():
	get_tree().change_scene(menu_inicio)

func _on_BotonSalir_pressed():
	get_tree().quit()
