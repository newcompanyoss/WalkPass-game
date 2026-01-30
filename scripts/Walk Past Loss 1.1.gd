extends CanvasLayer

var scene_music: AudioStreamPlayer

func _ready():
	scene_music = AudioStreamPlayer.new()
	add_child(scene_music)
	scene_music.stream = load("res://Music/WalkPast LossBeepBox-Song.wav")
	scene_music.volume_db = 0
	scene_music.play()

func _on_Exit_pressed():
	if scene_music:
		scene_music.stop()
		scene_music.queue_free()
	get_tree().change_scene("res://scenes/Walk Pass.tscn")
	pass


func _on_Retry_pressed():
	if scene_music:
		scene_music.stop()
		scene_music.queue_free()
	Health.reset()
	get_tree().change_scene(Global.last_scene_path)
	pass # Replace with function body.
