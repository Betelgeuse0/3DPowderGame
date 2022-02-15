extends Control

var camera: Camera
var gridmap: GridMap

func _ready():
	camera = $"../../Spatial/Camera"
	gridmap = $"../../GridMap"

func _draw():
	var grid_width: float = Constant.Grid.width
	var grid_height: float = Constant.Grid.height
	
	var line_start1 = camera.unproject_position(Vector3(grid_width / 2, 0, grid_width / 2))
	var line_end1 = camera.unproject_position(Vector3(grid_width / 2, grid_height, grid_width / 2))
	var line_start2 = camera.unproject_position(Vector3(-grid_width / 2, 0, -grid_width / 2))
	var line_end2 = camera.unproject_position(Vector3(-grid_width / 2, grid_height, -grid_width / 2))
	var line_start3 = camera.unproject_position(Vector3(-grid_width / 2, 0, grid_width / 2))
	var line_end3 = camera.unproject_position(Vector3(-grid_width / 2, grid_height, grid_width / 2))
	var line_start4 = camera.unproject_position(Vector3(grid_width / 2, 0, -grid_width / 2))
	var line_end4 = camera.unproject_position(Vector3(grid_width / 2, grid_height, -grid_width / 2))
	var line_start5 = camera.unproject_position(Vector3(grid_width / 2, grid_height, grid_width / 2))
	var line_end5 = camera.unproject_position(Vector3(grid_width / 2, grid_height, -grid_width / 2))
#	var line_start6 = camera.unproject_position(Vector3(grid_width / 2, 0, -grid_width / 2))
#	var line_end6 = camera.unproject_position(Vector3(grid_width / 2, grid_height, -grid_width / 2))	
	draw_line(line_start1, line_end1, Color.white, 1)
	draw_line(line_start2, line_end2, Color.white, 1)
	draw_line(line_start3, line_end3, Color.white, 1)
	draw_line(line_start4, line_end4, Color.white, 1)
	draw_line(line_start5, line_end5, Color.white, 1)
