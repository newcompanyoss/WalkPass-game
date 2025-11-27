extends Area2D

func _on_Wall_Priz_body_entered(body):
	if body.is_in_group("player"):
		var ver_element = get_tree().current_scene.find_node("Ver", true, false)
		
		if ver_element:
			ver_element.visible = true  
