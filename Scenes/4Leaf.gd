extends State

func enter():
	super.enter()
	owner.alpha = 4.1
	GlobalVar.animacion = "bossmove2"

func transition():
	if can_transition:
		get_parent().change_state("3Leaf")
