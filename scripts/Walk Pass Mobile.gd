extends CanvasLayer

func _input(event):
	if (event is InputEventKey or event is InputEventJoypadButton) and event.pressed:
		get_tree().call_group("WalkPassMobile", "hide")
		get_tree().call_group("WalkPassMobileLogo", "hide")
