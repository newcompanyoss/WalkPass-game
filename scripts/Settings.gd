extends Control

func _on_Button_pressed():
	get_tree().call_group("WalkPassMobile", "show")
	get_tree().change_scene("res://scenes/Walk Pass.tscn")
	pass # Replace with function body.
