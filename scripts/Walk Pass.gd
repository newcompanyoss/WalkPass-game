extends Control

func _ready():
	AudioManager.play_music()

func _on_Play_pressed():
	AudioManager.stop_music()  
	Health.reset()
	get_tree().change_scene("res://scenes/Level1.tscn")

func _on_Settings_pressed():
	get_tree().call_group("WalkPassMobileOn", "hide")
	get_tree().call_group("WalkPassMobile", "hide")
	get_tree().call_group("WalkPassMobileLogo", "hide")
	get_tree().change_scene("res://scenes/Settings.tscn")

func _on_Exit_pressed():
	AudioManager.stop_music() 
	get_tree().quit()
