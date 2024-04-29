extends Area2D

var speed = 100
var direction = Vector2.RIGHT
# Called when the node enters the scene tree for the first time.
func _physics_process(delta):
	position += direction * speed * delta




func _on_screen_exited():
	queue_free()
