extends CanvasLayer

var is_mobile_visible = false
var keyboard_pressed = false
onready var mobile_on_button = $"MobileOn"

func _ready():
	set_process_input(true)
	get_tree().call_group("WalkPassMobile", "hide")
	get_tree().call_group("WalkPassMobileLogo", "hide")
	
	if mobile_on_button and mobile_on_button is TouchScreenButton:
		mobile_on_button.modulate = Color(1, 1, 1, 0.5)

func _input(event):
	if (event is InputEventKey or event is InputEventJoypadButton) and event.pressed:
		keyboard_pressed = true
		if mobile_on_button:
			mobile_on_button.hide()

func _visible():
	is_mobile_visible = !is_mobile_visible
	
	if is_mobile_visible:
		get_tree().call_group("WalkPassMobile", "show")
		get_tree().call_group("WalkPassMobileLogo", "show")
	else:
		get_tree().call_group("WalkPassMobile", "hide")
		get_tree().call_group("WalkPassMobileLogo", "hide")
	
	if !keyboard_pressed and mobile_on_button:
		mobile_on_button.show()

func _on_MobileOn_pressed():
	_visible()
