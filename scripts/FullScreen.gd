extends Node

func _input(event):
	if event is InputEventKey and event.scancode == KEY_F11 and event.pressed and not event.echo:
		OS.window_fullscreen = not OS.window_fullscreen
