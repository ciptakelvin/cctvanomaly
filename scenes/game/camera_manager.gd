extends Node

var index:int = 0

func _input(event: InputEvent) -> void:
	if event is InputEvent:
		if event.is_action_pressed("next"):
			next_camera()
		
		if event.is_action_pressed("previous"):
			previous_camera()

func next_camera():
	index += 1
	index = index % get_child_count()
	set_current_camera(index)

func previous_camera():
	index -= 1
	index = index % get_child_count()
	set_current_camera(index)

func set_current_camera(index:int):
	var selected = get_child(index)
	if selected is Camera3D:
		selected.current = true
