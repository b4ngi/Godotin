# PantallaCarga.gd
extends Control

## Atributos
var tips: Array = [
	"mantenete alejado de las sierras",
	"utiliza tu linterna para ver en lugares oscuros",
	"junta todas las monedas posibles",
	"atraviesa los portales para pasar de nivel"
]

## Metodos
func _ready() -> void:
	var random = RandomNumberGenerator.new()
	random.randomize()
	var indice = random.randi_range(0, tips.size() - 1)
	$Label.text = "Tip: %s" %tips[indice]

## Seniales interas
func _on_Timer_timeout() -> void:
	if OS.get_name() in DatosConfiguracion.OS_ADMITIDOS_THREADS:
		CargaSegundoPlano.cargar_nivel(DatosJuego.nivel_actual)
	else:
# warning-ignore:return_value_discarded
		get_tree().change_scene(DatosJuego.nivel_actual)
