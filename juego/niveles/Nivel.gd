# Nivel.gd
tool
extends Node

export var numero_nivel: int = 0
export(String, FILE, "*.tscn") var proximo_nivel = ""

func _ready():
	DatosJuego.nivel_actual = get_tree().current_scene.filename
	DatosJuego.num_nivel_actual = numero_nivel
	DatosJuego.nivel_proximo = proximo_nivel

func _get_configuration_warning() -> String:
	if numero_nivel == 0 or proximo_nivel == "":
		return "Chequear valores de nivel"
	
	return ""
