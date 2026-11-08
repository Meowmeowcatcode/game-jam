extends Area2D

func _ready() -> void:
	area_entered.connect(_on_area_entered) 
	
func _on_area_entered(_area: Area2D) -> void:
	print("Entered") #tells me when they are overlapping
	#change_position()

#func change_position():
	#print("we should change the position of draggable") 
	#global_position = get_node("..endpositions").global_position


func _on_node_entered() -> void:
	pass # Replace with function body.
