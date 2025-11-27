extends Area2D

func _on_Wall_Priz_body_entered(body):
		if body.is_in_group("player"):
			get_tree().change_scene("res://scenes/Walk Priz Win4.tscn")
			pass
