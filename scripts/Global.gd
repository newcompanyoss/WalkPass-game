extends Node

var last_scene_path = ""

var sound_enabled = true

func apply_sound_settings():
	if sound_enabled:
		AudioServer.set_bus_mute(AudioServer.get_bus_index("Master"), false)
	else:
		AudioServer.set_bus_mute(AudioServer.get_bus_index("Master"), true)
