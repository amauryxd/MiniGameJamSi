extends Area2D


var speed = 30
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += Vector2(0,-1)*speed



func _on_visible_on_screen_enabler_2d_screen_exited():
	queue_free()
