extends CanvasLayer


func _input(event):
	if event.is_action_pressed("ui_cancel"):
		_visible()

func _visible():
	visible = !visible
	get_tree().paused = !get_tree().paused
	pass

func _on_Exit_pressed():
	get_tree().paused = false
	get_tree().change_scene("res://scenes/Walk Pass.tscn")
	pass # Replace with function body.


func _on_Retry_pressed():
	get_tree().paused = false
	get_tree().reload_current_scene()
	pass # Replace with function body.


func _on_Play_pressed():
	_visible()
	pass # Replace with function body.
