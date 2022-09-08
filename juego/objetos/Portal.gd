# Portal.gd
class_name PortalNivel
extends Area

export(String, FILE, "*.tscn") var proximo_nivel = ""

func _ready():
	pass

# warning-ignore:unused_argument
func _on_body_entered(body):
	if proximo_nivel != "":
# warning-ignore:return_value_discarded
		get_tree().change_scene(proximo_nivel)
