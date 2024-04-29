extends CharacterBody2D

var speed = 15

var vida = 15
var can_damage = true

@onready var p_bullet = preload("res://Scenes/PlyBullet.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += Input.get_vector("Move_Left","Move_Right","Move_Up","Move_Down")*speed
	$Marker2D.position = self.position
	
	if Input.is_action_just_pressed("Slow"):
		speed = 7.5
	elif Input.is_action_just_released("Slow"):
		speed = 15
	
	if Input.is_action_pressed("shoot"):
		var bullet = p_bullet.instantiate()
		bullet.position = $Marker2D.position
		get_tree().root.add_child(bullet)



func _on_hitbox_area_entered(area):
	if can_damage:
		if area.is_in_group("EnemyBullet"):
			vida -= 1
			can_damage = false
			$iframe.start()
			print(vida)
	
	if vida <= 0:
			queue_free()



func _on_iframe_timeout():
	can_damage=true
