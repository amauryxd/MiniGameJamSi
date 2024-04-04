extends Node2D

@onready var tile_map =$"../TileMap"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var current_tile: Vector2i = tile_map.map_to_local(global_position)
	#print(current_tile)
	
func _unhandled_input(event):
	var target_tile: Vector2i = tile_map.map(event.position)
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT:
			if event.pressed:
				print(target_tile)
				
