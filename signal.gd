extends Node
var position = 0 
signal entered

func move(amount):
	position -= amount
	if position <= 0:
		entered.emit()
