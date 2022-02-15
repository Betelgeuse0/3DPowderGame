extends Node

var type : int 
var pos : Vector3
var grav : float = 0.05

func _init(t = 0, p = Vector3.ZERO):
	type = t
	pos = p
	
func update(gridmap: GridMap):
	gridmap.set_cell_item(pos.x, pos.y, pos.z, -1)
	
	if gridmap.get_cell_item(pos.x, pos.y - grav, pos.z) == -1:
		pos.y -= grav
		pos.y = clamp(pos.y, 0, 100)
	
	gridmap.set_cell_item(pos.x, pos.y, pos.z, type)
	
