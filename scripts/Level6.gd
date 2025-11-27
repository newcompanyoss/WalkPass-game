extends Node2D

onready var enemy1 = $Enemy1
onready var enemy2 = $Enemy2
onready var enemy3 = $Enemy3
onready var enemy4 = $Enemy4
onready var enemy5 = $Enemy5
onready var enemy6 = $Enemy6
onready var enemy7 = $Enemy7
onready var enemy8 = $Enemy8
onready var enemy9 = $Enemy9

var enemy1_pattern = []
var enemy2_pattern = []
var enemy3_pattern = []
var enemy4_pattern = []
var enemy5_pattern = []
var enemy6_pattern = []
var enemy7_pattern = []
var enemy8_pattern = []
var enemy9_pattern = []

var enemy1_step = 0
var enemy2_step = 0
var enemy3_step = 0
var enemy4_step = 0
var enemy5_step = 0
var enemy6_step = 0
var enemy7_step = 0
var enemy8_step = 0
var enemy9_step = 0
var enemy1_timer = 0.0
var enemy2_timer = 0.0
var enemy3_timer = 0.0
var enemy4_timer = 0.0
var enemy5_timer = 0.0
var enemy6_timer = 0.0
var enemy7_timer = 0.0
var enemy8_timer = 0.0
var enemy9_timer = 0.0
var move_delay = 0.5

func _ready():
	for i in range(10):
		enemy1_pattern.append(Vector2.RIGHT * 16)
	for i in range(10):
		enemy1_pattern.append(Vector2.LEFT * 16)
	
	for i in range(3):
		enemy2_pattern.append(Vector2.DOWN * 16)
	for i in range(3):
		enemy2_pattern.append(Vector2.UP * 16)
	
	for i in range(5):
		enemy3_pattern.append(Vector2.DOWN * 16)
	for i in range(5):
		enemy3_pattern.append(Vector2.UP * 16)
	
	for i in range(4):
		enemy4_pattern.append(Vector2.RIGHT * 16)
	for i in range(4):
		enemy4_pattern.append(Vector2.LEFT * 16)
	
	for i in range(12):
		enemy5_pattern.append(Vector2.DOWN * 16)
	enemy5_pattern.append(Vector2.LEFT * 16)
	for i in range(2):
		enemy5_pattern.append(Vector2.DOWN * 16)
	enemy5_pattern.append(Vector2.RIGHT * 16)
	enemy5_pattern.append(Vector2.LEFT * 16)
	for i in range(2):
		enemy5_pattern.append(Vector2.UP * 16)
	enemy5_pattern.append(Vector2.RIGHT * 16)
	for i in range(12):
		enemy5_pattern.append(Vector2.UP * 16)
	
	for i in range(3):
		enemy6_pattern.append(Vector2.UP * 16)
	for i in range(3):
		enemy6_pattern.append(Vector2.DOWN * 16)
	
	for i in range(3):
		enemy7_pattern.append(Vector2.DOWN * 16)
	for i in range(3):
		enemy7_pattern.append(Vector2.UP * 16)
	
	for i in range(4):
		enemy8_pattern.append(Vector2.RIGHT * 16)
	for i in range(4):
		enemy8_pattern.append(Vector2.LEFT * 16)
	
	for i in range(11):
		enemy9_pattern.append(Vector2.RIGHT * 16)
	for i in range(11):
		enemy9_pattern.append(Vector2.LEFT * 16)

func _process(delta):
	enemy1_timer += delta
	if enemy1_timer >= move_delay:
		enemy1_timer = 0.0
		move_enemy1()
	
	enemy2_timer += delta
	if enemy2_timer >= move_delay:
		enemy2_timer = 0.0
		move_enemy2()
	
	enemy3_timer += delta
	if enemy3_timer >= move_delay:
		enemy3_timer = 0.0
		move_enemy3()
	
	enemy4_timer += delta
	if enemy4_timer >= move_delay:
		enemy4_timer = 0.0
		move_enemy4()
	
	enemy5_timer += delta
	if enemy5_timer >= move_delay:
		enemy5_timer = 0.0
		move_enemy5()
	
	enemy6_timer += delta
	if enemy6_timer >= move_delay:
		enemy6_timer = 0.0
		move_enemy6()
	
	enemy7_timer += delta
	if enemy7_timer >= move_delay:
		enemy7_timer = 0.0
		move_enemy7()
	
	enemy8_timer += delta
	if enemy8_timer >= move_delay:
		enemy8_timer = 0.0
		move_enemy8()
	
	enemy9_timer += delta
	if enemy9_timer >= move_delay:
		enemy9_timer = 0.0
		move_enemy9()

func move_enemy1():
	if enemy1_step < enemy1_pattern.size():
		enemy1.position += enemy1_pattern[enemy1_step]
		enemy1_step += 1
	else:
		enemy1_step = 0

func move_enemy2():
	if enemy2_step < enemy2_pattern.size():
		enemy2.position += enemy2_pattern[enemy2_step]
		enemy2_step += 1
	else:
		enemy2_step = 0

func move_enemy3():
	if enemy3_step < enemy3_pattern.size():
		enemy3.position += enemy3_pattern[enemy3_step]
		enemy3_step += 1
	else:
		enemy3_step = 0

func move_enemy4():
	if enemy4_step < enemy4_pattern.size():
		enemy4.position += enemy4_pattern[enemy4_step]
		enemy4_step += 1
	else:
		enemy4_step = 0

func move_enemy5():
	if enemy5_step < enemy5_pattern.size():
		enemy5.position += enemy5_pattern[enemy5_step]
		enemy5_step += 1
	else:
		enemy5_step = 0

func move_enemy6():
	if enemy6_step < enemy6_pattern.size():
		enemy6.position += enemy6_pattern[enemy6_step]
		enemy6_step += 1
	else:
		enemy6_step = 0

func move_enemy7():
	if enemy7_step < enemy7_pattern.size():
		enemy7.position += enemy7_pattern[enemy7_step]
		enemy7_step += 1
	else:
		enemy7_step = 0

func move_enemy8():
	if enemy8_step < enemy8_pattern.size():
		enemy8.position += enemy8_pattern[enemy8_step]
		enemy8_step += 1
	else:
		enemy8_step = 0

func move_enemy9():
	if enemy9_step < enemy9_pattern.size():
		enemy9.position += enemy9_pattern[enemy9_step]
		enemy9_step += 1
	else:
		enemy9_step = 0

