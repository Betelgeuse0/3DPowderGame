extends Spatial

func _process(delta):
	var rotation: float = delta * Constant.Keyboard.sensitivity
	
	if Input.is_action_pressed("ui_up"):
		rotate_object_local(Vector3.RIGHT, -rotation)
	if Input.is_action_pressed("ui_down"):
		rotate_object_local(Vector3.RIGHT, rotation)
