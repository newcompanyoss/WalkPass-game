extends Node2D

onready var enemy2 = $Enemy2
onready var enemy3 = $Enemy3
onready var enemy4 = $Enemy4
onready var enemy6 = $Enemy6
onready var enemy7 = $Enemy7
onready var enemy8 = $Enemy8
onready var enemy10 = $Enemy10
onready var enemy11 = $Enemy11
onready var enemy12 = $Enemy12
onready var enemy13 = $Enemy13
onready var enemy14 = $Enemy14
onready var enemy15 = $Enemy15
onready var enemy16 = $Enemy16
onready var enemy17 = $Enemy17
onready var enemy18 = $Enemy18

var enemy2_pattern = []
var enemy3_pattern = []
var enemy4_pattern = []
var enemy6_pattern = []
var enemy7_pattern = []
var enemy8_pattern = []
var enemy10_pattern = []
var enemy11_pattern = []
var enemy12_pattern = []
var enemy13_pattern = []
var enemy14_pattern = []
var enemy15_pattern = []
var enemy16_pattern = []
var enemy17_pattern = []
var enemy18_pattern = []

var enemy2_step = 0
var enemy3_step = 0
var enemy4_step = 0
var enemy6_step = 0
var enemy7_step = 0
var enemy8_step = 0
var enemy10_step = 0
var enemy11_step = 0
var enemy12_step = 0
var enemy13_step = 0
var enemy14_step = 0
var enemy15_step = 0
var enemy16_step = 0
var enemy17_step = 0
var enemy18_step = 0
var enemy2_timer = 0.0
var enemy3_timer = 0.0
var enemy4_timer = 0.0
var enemy6_timer = 0.0
var enemy7_timer = 0.0
var enemy8_timer = 0.0
var enemy10_timer = 0.0
var enemy11_timer = 0.0
var enemy12_timer = 0.0
var enemy13_timer = 0.0
var enemy14_timer = 0.0
var enemy15_timer = 0.0
var enemy16_timer = 0.0
var enemy17_timer = 0.0
var enemy18_timer = 0.0
var move_delay = 0.5

func _ready():
	enemy2_pattern.append(Vector2.LEFT * 16)
	for i in range(2):
		enemy2_pattern.append(Vector2.DOWN * 16)
	enemy2_pattern.append(Vector2.RIGHT * 16)
	enemy2_pattern.append(Vector2.LEFT * 16)
	for i in range(2):
		enemy2_pattern.append(Vector2.UP * 16)
	enemy2_pattern.append(Vector2.RIGHT * 16)
	
	for i in range(8):
		enemy3_pattern.append(Vector2.RIGHT * 16)
	for i in range(8):
		enemy3_pattern.append(Vector2.LEFT * 16)
	
	for i in range(7):
		enemy4_pattern.append(Vector2.DOWN * 16)
	for i in range(7):
		enemy4_pattern.append(Vector2.UP * 16)
	
	for i in range(8):
		enemy6_pattern.append(Vector2.LEFT * 16)
	for i in range(8):
		enemy6_pattern.append(Vector2.RIGHT * 16)
	
	for i in range(2):
		enemy7_pattern.append(Vector2.UP * 16)
	for i in range(2):
		enemy7_pattern.append(Vector2.DOWN * 16)
	
	enemy8_pattern.append(Vector2.RIGHT * 16)
	for i in range(2):
		enemy8_pattern.append(Vector2.DOWN * 16)
	enemy8_pattern.append(Vector2.LEFT * 16)
	enemy8_pattern.append(Vector2.RIGHT * 16)
	for i in range(2):
		enemy8_pattern.append(Vector2.UP * 16)
	enemy8_pattern.append(Vector2.LEFT * 16)
	
	for i in range(2):
		enemy10_pattern.append(Vector2.DOWN * 16)
	for i in range(2):
		enemy10_pattern.append(Vector2.UP * 16)
	
	for i in range(2):
		enemy11_pattern.append(Vector2.DOWN * 16)
	for i in range(2):
		enemy11_pattern.append(Vector2.UP * 16)
	
	for i in range(2):
		enemy12_pattern.append(Vector2.UP * 16)
	for i in range(2):
		enemy12_pattern.append(Vector2.DOWN * 16)
	
	for i in range(3):
		enemy13_pattern.append(Vector2.LEFT * 16)
	for i in range(3):
		enemy13_pattern.append(Vector2.RIGHT * 16)
	
	enemy14_pattern.append(Vector2.LEFT * 16)
	for i in range(2):
		enemy14_pattern.append(Vector2.DOWN * 16)
	enemy14_pattern.append(Vector2.RIGHT * 16)
	enemy14_pattern.append(Vector2.LEFT * 16)
	for i in range(2):
		enemy14_pattern.append(Vector2.UP * 16)
	enemy14_pattern.append(Vector2.RIGHT * 16)
	
	for i in range(3):
		enemy15_pattern.append(Vector2.LEFT * 16)
	for i in range(3):
		enemy15_pattern.append(Vector2.RIGHT * 16)
	
	for i in range(3):
		enemy16_pattern.append(Vector2.RIGHT * 16)
	for i in range(3):
		enemy16_pattern.append(Vector2.LEFT * 16)
	
	for i in range(3):
		enemy17_pattern.append(Vector2.LEFT * 16)
	for i in range(3):
		enemy17_pattern.append(Vector2.RIGHT * 16)
	
	for i in range(2):
		enemy18_pattern.append(Vector2.DOWN * 16)
	for i in range(2):
		enemy18_pattern.append(Vector2.UP * 16)

func _process(delta):
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
	
	enemy10_timer += delta
	if enemy10_timer >= move_delay:
		enemy10_timer = 0.0
		move_enemy10()
	
	enemy11_timer += delta
	if enemy11_timer >= move_delay:
		enemy11_timer = 0.0
		move_enemy11()
	
	enemy12_timer += delta
	if enemy12_timer >= move_delay:
		enemy12_timer = 0.0
		move_enemy12()
	
	enemy13_timer += delta
	if enemy13_timer >= move_delay:
		enemy13_timer = 0.0
		move_enemy13()
	
	enemy14_timer += delta
	if enemy14_timer >= move_delay:
		enemy14_timer = 0.0
		move_enemy14()
	
	enemy15_timer += delta
	if enemy15_timer >= move_delay:
		enemy15_timer = 0.0
		move_enemy15()
	
	enemy16_timer += delta
	if enemy16_timer >= move_delay:
		enemy16_timer = 0.0
		move_enemy16()
	
	enemy17_timer += delta
	if enemy17_timer >= move_delay:
		enemy17_timer = 0.0
		move_enemy17()
	
	enemy18_timer += delta
	if enemy18_timer >= move_delay:
		enemy18_timer = 0.0
		move_enemy18()

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

func move_enemy10():
	if enemy10_step < enemy10_pattern.size():
		enemy10.position += enemy10_pattern[enemy10_step]
		enemy10_step += 1
	else:
		enemy10_step = 0

func move_enemy11():
	if enemy11_step < enemy11_pattern.size():
		enemy11.position += enemy11_pattern[enemy11_step]
		enemy11_step += 1
	else:
		enemy11_step = 0

func move_enemy12():
	if enemy12_step < enemy12_pattern.size():
		enemy12.position += enemy12_pattern[enemy12_step]
		enemy12_step += 1
	else:
		enemy12_step = 0

func move_enemy13():
	if enemy13_step < enemy13_pattern.size():
		enemy13.position += enemy13_pattern[enemy13_step]
		enemy13_step += 1
	else:
		enemy13_step = 0

func move_enemy14():
	if enemy14_step < enemy14_pattern.size():
		enemy14.position += enemy14_pattern[enemy14_step]
		enemy14_step += 1
	else:
		enemy14_step = 0

func move_enemy15():
	if enemy15_step < enemy15_pattern.size():
		enemy15.position += enemy15_pattern[enemy15_step]
		enemy15_step += 1
	else:
		enemy15_step = 0

func move_enemy16():
	if enemy16_step < enemy16_pattern.size():
		enemy16.position += enemy16_pattern[enemy16_step]
		enemy16_step += 1
	else:
		enemy16_step = 0

func move_enemy17():
	if enemy17_step < enemy17_pattern.size():
		enemy17.position += enemy17_pattern[enemy17_step]
		enemy17_step += 1
	else:
		enemy17_step = 0

func move_enemy18():
	if enemy18_step < enemy18_pattern.size():
		enemy18.position += enemy18_pattern[enemy18_step]
		enemy18_step += 1
	else:
		enemy18_step = 0

