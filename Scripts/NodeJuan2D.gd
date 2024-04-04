extends Node2D

@onready var tile_map =$"../TileMap"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var current_tile: Vector2i = tile_map.local_to_map(global_position)
	print(current_tile)
	

	
	
