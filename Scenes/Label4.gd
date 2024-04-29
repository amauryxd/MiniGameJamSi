extends Label


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if is_instance_valid($"../Player"):
		if $"../Player".vida >=1:
			$".".text = str($"../Player".vida)
		else:
			$".".text = "te moriste xD"
