# MenuIntermedio.gd
extends Control

onready var titulo = $Titulo
onready var puntos = $Puntos

export(String, FILE, "*.tscn") var pantalla_carga = ""

func _ready() -> void:
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	titulo.text = "NIVEL {num} COMPLETO".format({"num": DatosJuego.num_nivel_actual})
	puntos.text = "{puntos}\n PUNTOS TOTALES".format({"puntos": DatosJuego.generar_puntaje()})
	DatosJuego.nivel_actual = DatosJuego.nivel_proximo

func _on_BotonNivel_pressed() -> void:
# warning-ignore:return_value_discarded
	get_tree().change_scene(pantalla_carga)
