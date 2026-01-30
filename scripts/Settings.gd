extends Control

onready var eye_protection_button = $EyeProtectionButton
onready var sound_button = $SoundButton 

var eye_protection_group = []

var icon_on = preload("res://sprites/Walk Pass/Menus/eye protection on.png")
var icon_off = preload("res://sprites/Walk Pass/Menus/eye protection off.png")

var sound_icon_on = preload("res://sprites/Walk Pass/Menus/Music on.png")  
var sound_icon_off = preload("res://sprites/Walk Pass/Menus/Music off.png")  

func _ready():
	var sound_enabled = Global.sound_enabled
	
	eye_protection_group = get_tree().get_nodes_in_group("eyeprotectionon")
	
	var is_visible = false
	if eye_protection_group.size() > 0:
		is_visible = eye_protection_group[0].visible
	
	if is_visible:
		eye_protection_button.icon = icon_on
	else:
		eye_protection_button.icon = icon_off
	
	if sound_enabled:
		sound_button.icon = sound_icon_on
		Global.apply_sound_settings()
	else:
		sound_button.icon = sound_icon_off
		Global.apply_sound_settings()

func _on_EyeProtectionButton_pressed():
	var should_show = false
	
	if eye_protection_group.size() > 0:
		should_show = !eye_protection_group[0].visible
	
	for node in eye_protection_group:
		node.visible = should_show
	
	if should_show:
		eye_protection_button.icon = icon_on
	else:
		eye_protection_button.icon = icon_off

func _on_SoundButton_pressed():
	Global.sound_enabled = !Global.sound_enabled
	
	Global.apply_sound_settings()
	
	if Global.sound_enabled:
		sound_button.icon = sound_icon_on
	else:
		sound_button.icon = sound_icon_off

func _on_Button_pressed():
	get_tree().call_group("WalkPassMobileOn", "show")
	get_tree().change_scene("res://scenes/Walk Pass.tscn")
