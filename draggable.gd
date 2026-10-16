# IMPORTANT - if you ever stack up all the objects you can only move them all at one=ce
# we should probably make it so you can only drag one at a timr

extends Area2D

var dragging := false # its not dragging yet
var dragOffset := Vector2.ZERO #this is like how far you clicked on it from the center so it doen t snap to thre middle

func _ready() -> void:
	input_pickable = true #can detect if the mouse is on it 
	input_event.connect(_on_input_event) #cant remeber what this does but if u delet it it all bresks



func _on_input_event(
	_viewport : Node,
	event: InputEvent,
	_shape_idx: int
	) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			start_draging()

func start_draging() -> void:
	dragging = true
	dragOffset  = global_position - get_global_mouse_position()


func stop_drag() -> void:
	dragging = false
	

func _process(_delta: float) -> void: #this is to update the position of the object as  it being drgaed
	if dragging:
		global_position = get_global_mouse_position() + dragOffset

func _input(event: InputEvent) -> void:
	if dragging and event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and not event.pressed:
			stop_drag() # stop dragginhg when user stops holdimg the button (otherwise thry drag forever)


#
