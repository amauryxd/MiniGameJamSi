extends AnimationPlayer


# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	#$".".play(GlobalVar.animacion)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if is_instance_valid($".."):
		if $"..".vida >= 1:
			$".".play(GlobalVar.animacion)
