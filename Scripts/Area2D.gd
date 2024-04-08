extends ColorRect
var isOnTile=false

##
#func _unhandled_input(event):
#	if event is InputEventMouseButton and isOnTile == false:
		#print(event)
		#print("It is a mouse click.")

func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and isOnTile == true:
		print(event)
		print("It is a mouse click.")


func _on_mouse_entered():
	isOnTile=true
	print("uwu")


func _on_mouse_exited():
	isOnTile=false;
