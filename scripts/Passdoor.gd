extends Area2D

func _generate_door_sound():
	var stream_sample = AudioStreamSample.new()
	stream_sample.mix_rate = 22050
	stream_sample.format = AudioStreamSample.FORMAT_16_BITS
	stream_sample.stereo = false
	
	var data = PoolByteArray()
	var phase = 0.0
	var envelope = 0.0
	
	for i in range(3000):
		var sample = 0.0
		var t = i / 22050.0
		
		var freq1 = 150.0 * (1.0 - t * 0.5)
		var freq2 = 300.0 * (1.0 - t * 0.3)
		var freq3 = 80.0 * (1.0 - t * 0.7)
		
		sample += sin(phase * TAU) * 0.4
		sample += sin(phase * 1.5 * TAU) * 0.3
		sample += sin(phase * 0.7 * TAU) * 0.2
		
		envelope = 1.0
		if t < 0.05:
			envelope = t / 0.05
		elif t > 0.15:
			envelope = 1.0 - (t - 0.15) / 0.1
		
		sample *= envelope
		
		var sample_16 = int(clamp(sample * 32767, -32768, 32767))
		data.append(sample_16 & 0xFF)
		data.append((sample_16 >> 8) & 0xFF)
		
		phase += (freq1 + freq2 + freq3) / 3.0 / 22050.0
	
	stream_sample.data = data
	return stream_sample

func _on_Passdoor_body_entered(body):
	if body.is_in_group("player"):
		if body.has_key:
			var audio_player = AudioStreamPlayer.new()
			add_child(audio_player)
			audio_player.stream = _generate_door_sound()
			audio_player.play()
			yield(get_tree().create_timer(0.2), "timeout")
			audio_player.queue_free()
			queue_free()

