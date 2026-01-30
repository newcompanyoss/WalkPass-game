extends Node

var hits := 0
const MAX_HITS := 3

func increment() -> void:
	hits += 1
	if hits >= MAX_HITS:
		Global.last_scene_path = get_tree().current_scene.filename
		get_tree().change_scene("res://scenes/Walk Past Loss 1.1.tscn")
	else:
		get_tree().reload_current_scene()

func reset() -> void:
	hits = 0

