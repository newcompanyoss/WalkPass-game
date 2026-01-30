extends KinematicBody2D

var has_key = false
var is_moving = false
var target_position = Vector2.ZERO
var move_speed = 10
var input_timer = 0.0
var input_interval = 0.15

onready var ray = $RayCast2D

var inputs = {
	'ui_up': Vector2.UP,
	'ui_down': Vector2.DOWN,
	"ui_left": Vector2.LEFT,
	"ui_right": Vector2.RIGHT,
}

func _generate_step_sound():
	var stream_sample = AudioStreamSample.new()
	stream_sample.mix_rate = 22050
	stream_sample.format = AudioStreamSample.FORMAT_16_BITS
	stream_sample.stereo = false
	
	var data = PoolByteArray()
	var phase = 0.0
	
	for i in range(800):
		var sample = 0.0
		var t = i / 22050.0
		
		var freq = 130.0
		
		sample += sin(phase * TAU) * 0.2
		
		var envelope = 1.0
		if t < 0.01:
			envelope = t / 0.01
		else:
			envelope = 1.0 - (t - 0.01) / 0.02
		
		sample *= envelope
		
		var sample_16 = int(clamp(sample * 32767, -32768, 32767))
		data.append(sample_16 & 0xFF)
		data.append((sample_16 >> 8) & 0xFF)
		
		phase += freq / 22050.0
	
	stream_sample.data = data
	return stream_sample

func _play_step_sound():
	var audio_player = AudioStreamPlayer.new()
	add_child(audio_player)
	audio_player.stream = _generate_step_sound()
	audio_player.play()
	yield(get_tree().create_timer(0.05), "timeout")
	audio_player.queue_free()

func _process(delta):
	if is_moving:
		position = position.move_toward(target_position, move_speed)
		if position.distance_to(target_position) < 1:
			position = target_position
			is_moving = false
	
	input_timer += delta

func _physics_process(delta):
	if is_moving:
		return
	
	var input_received = false
	
	if Input.is_action_pressed("ui_up") and input_timer >= input_interval:
		input_received = true
		move("ui_up")
	elif Input.is_action_pressed("ui_down") and input_timer >= input_interval:
		input_received = true
		move("ui_down")
	elif Input.is_action_pressed("ui_left") and input_timer >= input_interval:
		input_received = true
		move("ui_left")
	elif Input.is_action_pressed("ui_right") and input_timer >= input_interval:
		input_received = true
		move("ui_right")
	
	if input_received:
		input_timer = 0.0

func move(dir):
	var vector_pos = inputs[dir] * 16
	ray.cast_to = vector_pos
	ray.force_raycast_update()
	if !ray.is_colliding():
		target_position = position + vector_pos
		is_moving = true
		_play_step_sound()
