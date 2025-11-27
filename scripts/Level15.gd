extends Node2D

onready var enemy = $EnemyWalkEnd
onready var player = $Player15

var speed = 70 
var detection_range = 200 

func _process(delta):
	if enemy and player:

		var distance = enemy.position.distance_to(player.position)
		

		if distance <= detection_range:

			var direction = (player.position - enemy.position).normalized()
			
			enemy.position += direction * speed * delta

