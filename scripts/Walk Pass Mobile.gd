extends CanvasLayer

func _ready():
	set_process_input(true)

func _input(event):
	if (event is InputEventKey or event is InputEventJoypadButton) and event.pressed:
		get_tree().call_group("WalkPassMobile", "hide")
