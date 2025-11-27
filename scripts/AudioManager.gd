extends Node

var music_player: AudioStreamPlayer

func _ready():
	music_player = AudioStreamPlayer.new()
	add_child(music_player)
	music_player.stream = load("res://Music/Walk PassBeepBox-Song.wav")
	music_player.volume_db = 0
	
	music_player.connect("finished", self, "_on_music_finished")
	
func _on_music_finished():
	music_player.play()
	
func play_music():
	if not music_player.playing:
		music_player.play()

func stop_music():
	music_player.stop()
	music_player.disconnect("finished", self, "_on_music_finished")
