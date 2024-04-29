extends State


func enter():
	super.enter()
	owner.alpha = 2.7
	GlobalVar.animacion = "bossmove4"

func transition():
	if can_transition:
		get_parent().change_state("5Leaf")
