extends GridMap

var Block = preload("res://assets/Block.gd")
var blocks: Array = [Block.new(Constant.Block.DIRT, Vector3(0, 10, 0)), Block.new(Constant.Block.GRASS, Vector3(0, 13, 0))]

func _process(delta):
	for block in blocks:
		block.update(self)
		
