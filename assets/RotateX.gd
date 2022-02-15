extends Spatial

func _process(delta):
	var rotation: float = delta * Constant.Keyboard.sensitivity
	
	if Input.is_action_pressed("ui_left"):
		rotate_object_local(Vector3.UP, -rotation)
	if Input.is_action_pressed("ui_right"):
		rotate_object_local(Vector3.UP, rotation)
