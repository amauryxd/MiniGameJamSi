extends State

func enter():
	super.enter()
	owner.alpha = 5.6
	GlobalVar.animacion = "bossmove3"

func transition():
	if can_transition:
		get_parent().change_state("2Leaf")
