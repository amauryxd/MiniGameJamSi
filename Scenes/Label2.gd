extends Label

var vida2 = 500
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if is_instance_valid($"../Enemy"):
		if $"../Enemy".vida >= 1:
			$".".text = str($"../Enemy".vida)
		else:
			$".".text = "se murio"
