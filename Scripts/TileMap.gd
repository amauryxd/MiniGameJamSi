extends TileMap

var GridSize = 4
var Dic= {}


func _ready():
	for x in GridSize:
		for y in GridSize:
			Dic[str(Vector2(x,y))]={
				"Type": "Grass",
				"position":str(Vector2(x,y))
			}
			set_cell(0,Vector2(x,y), 0, Vector2i(0,0), 0)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
