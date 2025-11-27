extends Node2D

onready var enemy1 = $Enemy1
onready var enemy2 = $Enemy2
onready var enemy3 = $Enemy3
onready var enemy4 = $Enemy4
onready var enemy5 = $Enemy5

var enemy1_pattern = []
var enemy2_pattern = []
var enemy3_pattern = []
var enemy4_pattern = []
var enemy5_pattern = []

var enemy1_step = 0
var enemy2_step = 0
var enemy3_step = 0
var enemy4_step = 0
var enemy5_step = 0
var enemy1_timer = 0.0
var enemy2_timer = 0.0
var enemy3_timer = 0.0
var enemy4_timer = 0.0
var enemy5_timer = 0.0
var move_delay = 0.5  

func _ready():
	for i in range(10):
		enemy1_pattern.append(Vector2.LEFT * 16)
	for i in range(10):
		enemy1_pattern.append(Vector2.RIGHT * 16)

	for i in range(13):
		enemy2_pattern.append(Vector2.RIGHT * 16)
	for i in range(13):
		enemy2_pattern.append(Vector2.LEFT * 16)
 
	for i in range(9):
		enemy3_pattern.append(Vector2.RIGHT * 16)
	for i in range(9):
		enemy3_pattern.append(Vector2.LEFT * 16)
	
	for i in range(20):
		enemy4_pattern.append(Vector2.LEFT * 16)
	for i in range(20):
		enemy4_pattern.append(Vector2.RIGHT * 16)
	
	for i in range(25):
		enemy5_pattern.append(Vector2.RIGHT * 16)
	for i in range(25):
		enemy5_pattern.append(Vector2.LEFT * 16)

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
