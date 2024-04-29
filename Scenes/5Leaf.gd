extends State

func enter():
	super.enter()
	owner.alpha = 1.2
	speed.start()
	GlobalVar.animacion = "bossmove"

func transition():
	if can_transition:
		get_parent().change_state("4Leaf")
