extends Area2D

func _generate_enemy_sound():
	var stream_sample = AudioStreamSample.new()
	stream_sample.mix_rate = 22050
	stream_sample.format = AudioStreamSample.FORMAT_16_BITS
	stream_sample.stereo = false
	
	var data = PoolByteArray()
	var phase = 0.0
	
	for i in range(2500):
		var sample = 0.0
		var t = i / 22050.0
		
		var freq = 80.0 + sin(t * 30.0) * 20.0
		
		sample += sin(phase * TAU) * 0.5
		sample += sin(phase * 0.5 * TAU) * 0.3
		
		var envelope = 1.0
		if t < 0.05:
			envelope = t / 0.05
		elif t > 0.15:
			envelope = 1.0 - (t - 0.15) / 0.1
		
		sample *= envelope
		
		var sample_16 = int(clamp(sample * 32767, -32768, 32767))
		data.append(sample_16 & 0xFF)
		data.append((sample_16 >> 8) & 0xFF)
		
		phase += freq / 22050.0
	
	stream_sample.data = data
	return stream_sample

func _on_Area2D_body_entered(body):
	if body.is_in_group("player"):
		var audio_player = AudioStreamPlayer.new()
		add_child(audio_player)
		audio_player.stream = _generate_enemy_sound()
		audio_player.play()
		yield(get_tree().create_timer(0.2), "timeout")
		audio_player.queue_free()
		
		Health.increment()
