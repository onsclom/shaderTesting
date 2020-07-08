extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


func _ready():
	set_process(true)

func _process(delta):
	if Input.is_action_pressed("key_exit"):
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		get_tree().quit()
