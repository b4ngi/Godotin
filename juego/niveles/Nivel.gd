# Nivel.gd
tool
extends Node

export var numero_nivel: int = 0
export(String, FILE, "*.tscn") var proximo_nivel = ""
export(String, FILE, "*.tscn") var menu_game_over = ""

func _ready():
	Eventos.connect("game_over", self, "game_over")
	print("antes")
	yield(get_tree().create_timer(4.0), "timeout")
	print("despues")
	actualizar_datos()
	var guardar: GuardarCargar = GuardarCargar.new() #
	guardar.guardar_datos_juego() #

func actualizar_datos() -> void:
	DatosJuego.nivel_actual = get_tree().current_scene.filename
	DatosJuego.num_nivel_actual = numero_nivel
	DatosJuego.nivel_proximo = proximo_nivel

func _get_configuration_warning() -> String:
	if numero_nivel == 0 or proximo_nivel == "":
		return "Chequear valores de nivel"
	
	return ""

func game_over():
# warning-ignore:return_value_discarded
	get_tree().current_scene.queue_free()
	get_tree().current_scene = null
	#get_tree().root.add_child(menu_game_over)
	#get_tree().current_scene = menu_game_over
	get_tree().change_scene(menu_game_over)
