extends Node

var bg_sound = preload("res://Music/Walk PassBeepBox-Song.wav")
var audio_player: AudioStreamPlayer

func _ready():
	audio_player = AudioStreamPlayer.new()
	audio_player.stream = bg_sound
	audio_player.name = "WalkPassMusic"
	add_child(audio_player)
	
	audio_player.pause_mode = Node.PAUSE_MODE_PROCESS
	
	if not audio_player.playing:
		audio_player.play()
	
	audio_player.connect("finished", self, "_on_audio_finished")

func _on_audio_finished():
	audio_player.play()

func stop_music():
	if audio_player.playing:
		audio_player.stop()

func play_music():
	if not audio_player.playing:
		audio_player.play()
