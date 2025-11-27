extends Node2D

onready var enemy1 = $Enemy1

var enemy1_pattern = []
var enemy1_step = 0
var enemy1_timer = 0.0
var move_delay = 0.5

func _ready():
	for i in range(3):
		enemy1_pattern.append(Vector2.UP * 16)
	for i in range(3):
		enemy1_pattern.append(Vector2.DOWN * 16)

func _process(delta):
	enemy1_timer += delta
	if enemy1_timer >= move_delay:
		enemy1_timer = 0.0
		move_enemy1()

func move_enemy1():
	if enemy1_step < enemy1_pattern.size():
		enemy1.position += enemy1_pattern[enemy1_step]
		enemy1_step += 1
	else:
		enemy1_step = 0
