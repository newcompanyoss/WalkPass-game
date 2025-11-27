extends CanvasLayer

func _on_Next_pressed():
	Health.reset()
	get_tree().change_scene("res://scenes/Level15.tscn")
	pass


func _on_Exit_pressed():
	get_tree().change_scene("res://scenes/Walk Pass.tscn")
	pass # Replace with function body.


func _on_Retry_pressed():
	Health.reset()
	get_tree().change_scene("res://scenes/Level14.tscn")
	pass
