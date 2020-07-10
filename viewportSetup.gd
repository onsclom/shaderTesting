extends ViewportContainer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _attachTime():
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _readyTime():
	
	print("ATTACH")
	get_material().set_shader_param("distanceMap", $Viewport/Spatial/Character/KinematicBody/CamBase/Viewport.get_texture())
	pass # Replace with function body.
