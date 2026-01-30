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
onready var enemy10 = $Enemy10
onready var enemy11 = $Enemy11
onready var enemy12 = $Enemy12
onready var enemy13 = $Enemy13
onready var enemy14 = $Enemy14
onready var enemy15 = $Enemy15
onready var enemy16 = $Enemy16
onready var enemy17 = $Enemy17
onready var enemy18 = $Enemy18
onready var enemy19 = $Enemy19
onready var enemy20 = $Enemy20
onready var enemy21 = $Enemy21
onready var enemy22 = $Enemy22
onready var enemy23 = $Enemy23
onready var enemy24 = $Enemy24
onready var enemy25 = $Enemy25
onready var enemy26 = $Enemy26
onready var enemy27 = $Enemy27
onready var enemy28 = $Enemy28
onready var enemy29 = $Enemy29
onready var enemy30 = $Enemy30
onready var enemy31 = $Enemy31
onready var enemy32 = $Enemy32

var enemy1_pattern = []
var enemy2_pattern = []
var enemy3_pattern = []
var enemy4_pattern = []
var enemy5_pattern = []
var enemy6_pattern = []
var enemy7_pattern = []
var enemy8_pattern = []
var enemy9_pattern = []
var enemy10_pattern = []
var enemy11_pattern = []
var enemy12_pattern = []
var enemy13_pattern = []
var enemy14_pattern = []
var enemy15_pattern = []
var enemy16_pattern = []
var enemy17_pattern = []
var enemy18_pattern = []
var enemy19_pattern = []
var enemy20_pattern = []
var enemy21_pattern = []
var enemy22_pattern = []
var enemy23_pattern = []
var enemy24_pattern = []
var enemy25_pattern = []
var enemy26_pattern = []
var enemy27_pattern = []
var enemy28_pattern = []
var enemy29_pattern = []
var enemy30_pattern = []
var enemy31_pattern = []
var enemy32_pattern = []

var enemy1_step = 0
var enemy2_step = 0
var enemy3_step = 0
var enemy4_step = 0
var enemy5_step = 0
var enemy6_step = 0
var enemy7_step = 0
var enemy8_step = 0
var enemy9_step = 0
var enemy10_step = 0
var enemy11_step = 0
var enemy12_step = 0
var enemy13_step = 0
var enemy14_step = 0
var enemy15_step = 0
var enemy16_step = 0
var enemy17_step = 0
var enemy18_step = 0
var enemy19_step = 0
var enemy20_step = 0
var enemy21_step = 0
var enemy22_step = 0
var enemy23_step = 0
var enemy24_step = 0
var enemy25_step = 0
var enemy26_step = 0
var enemy27_step = 0
var enemy28_step = 0
var enemy29_step = 0
var enemy30_step = 0
var enemy31_step = 0
var enemy32_step = 0
var enemy1_timer = 0.0
var enemy2_timer = 0.0
var enemy3_timer = 0.0
var enemy4_timer = 0.0
var enemy5_timer = 0.0
var enemy6_timer = 0.0
var enemy7_timer = 0.0
var enemy8_timer = 0.0
var enemy9_timer = 0.0
var enemy10_timer = 0.0
var enemy11_timer = 0.0
var enemy12_timer = 0.0
var enemy13_timer = 0.0
var enemy14_timer = 0.0
var enemy15_timer = 0.0
var enemy16_timer = 0.0
var enemy17_timer = 0.0
var enemy18_timer = 0.0
var enemy19_timer = 0.0
var enemy20_timer = 0.0
var enemy21_timer = 0.0
var enemy22_timer = 0.0
var enemy23_timer = 0.0
var enemy24_timer = 0.0
var enemy25_timer = 0.0
var enemy26_timer = 0.0
var enemy27_timer = 0.0
var enemy28_timer = 0.0
var enemy29_timer = 0.0
var enemy30_timer = 0.0
var enemy31_timer = 0.0
var enemy32_timer = 0.0
var move_delay = 0.5

func _ready():
	Global.last_scene_path = get_tree().current_scene.filename
	for i in range(3):
		enemy1_pattern.append(Vector2.RIGHT * 16)
	for i in range(3):
		enemy1_pattern.append(Vector2.LEFT * 16)
	
	for i in range(3):
		enemy2_pattern.append(Vector2.RIGHT * 16)
	for i in range(3):
		enemy2_pattern.append(Vector2.LEFT * 16)
	
	for i in range(3):
		enemy3_pattern.append(Vector2.RIGHT * 16)
	for i in range(3):
		enemy3_pattern.append(Vector2.LEFT * 16)
	
	for i in range(3):
		enemy4_pattern.append(Vector2.RIGHT * 16)
	for i in range(3):
		enemy4_pattern.append(Vector2.LEFT * 16)
	
	for i in range(3):
		enemy5_pattern.append(Vector2.RIGHT * 16)
	for i in range(3):
		enemy5_pattern.append(Vector2.LEFT * 16)
	
	for i in range(1):
		enemy6_pattern.append(Vector2.RIGHT * 16)
	for i in range(1):
		enemy6_pattern.append(Vector2.LEFT * 16)
	
	for i in range(3):
		enemy7_pattern.append(Vector2.LEFT * 16)
	for i in range(3):
		enemy7_pattern.append(Vector2.RIGHT * 16)
	
	for i in range(3):
		enemy8_pattern.append(Vector2.LEFT * 16)
	for i in range(3):
		enemy8_pattern.append(Vector2.RIGHT * 16)
	
	for i in range(3):
		enemy9_pattern.append(Vector2.LEFT * 16)
	for i in range(3):
		enemy9_pattern.append(Vector2.RIGHT * 16)
	
	for i in range(3):
		enemy10_pattern.append(Vector2.LEFT * 16)
	for i in range(3):
		enemy10_pattern.append(Vector2.RIGHT * 16)
	
	for i in range(3):
		enemy11_pattern.append(Vector2.LEFT * 16)
	for i in range(3):
		enemy11_pattern.append(Vector2.RIGHT * 16)
	
	for i in range(1):
		enemy12_pattern.append(Vector2.LEFT * 16)
	for i in range(1):
		enemy12_pattern.append(Vector2.RIGHT * 16)
	
	for i in range(3):
		enemy13_pattern.append(Vector2.LEFT * 16)
	for i in range(3):
		enemy13_pattern.append(Vector2.RIGHT * 16)
	
	for i in range(3):
		enemy14_pattern.append(Vector2.LEFT * 16)
	for i in range(3):
		enemy14_pattern.append(Vector2.RIGHT * 16)
	
	for i in range(3):
		enemy15_pattern.append(Vector2.LEFT * 16)
	for i in range(3):
		enemy15_pattern.append(Vector2.RIGHT * 16)
	
	for i in range(3):
		enemy16_pattern.append(Vector2.LEFT * 16)
	for i in range(3):
		enemy16_pattern.append(Vector2.RIGHT * 16)
	
	for i in range(3):
		enemy17_pattern.append(Vector2.LEFT * 16)
	for i in range(3):
		enemy17_pattern.append(Vector2.RIGHT * 16)
	
	for i in range(1):
		enemy18_pattern.append(Vector2.LEFT * 16)
	for i in range(1):
		enemy18_pattern.append(Vector2.RIGHT * 16)
	
	for i in range(4):
		enemy19_pattern.append(Vector2.LEFT * 16)
	for i in range(4):
		enemy19_pattern.append(Vector2.RIGHT * 16)
	
	for i in range(4):
		enemy20_pattern.append(Vector2.LEFT * 16)
	for i in range(4):
		enemy20_pattern.append(Vector2.RIGHT * 16)
	
	for i in range(4):
		enemy21_pattern.append(Vector2.LEFT * 16)
	for i in range(4):
		enemy21_pattern.append(Vector2.RIGHT * 16)
	
	for i in range(4):
		enemy22_pattern.append(Vector2.LEFT * 16)
	for i in range(4):
		enemy22_pattern.append(Vector2.RIGHT * 16)
	
	for i in range(4):
		enemy23_pattern.append(Vector2.LEFT * 16)
	for i in range(4):
		enemy23_pattern.append(Vector2.RIGHT * 16)
	
	for i in range(2):
		enemy24_pattern.append(Vector2.LEFT * 16)
	for i in range(2):
		enemy24_pattern.append(Vector2.RIGHT * 16)
	
	for i in range(5):
		enemy25_pattern.append(Vector2.LEFT * 16)
	for i in range(5):
		enemy25_pattern.append(Vector2.RIGHT * 16)
	
	for i in range(4):
		enemy26_pattern.append(Vector2.DOWN * 16)
	for i in range(4):
		enemy26_pattern.append(Vector2.UP * 16)
	
	for i in range(3):
		enemy27_pattern.append(Vector2.UP * 16)
	for i in range(3):
		enemy27_pattern.append(Vector2.DOWN * 16)
	
	for i in range(3):
		enemy28_pattern.append(Vector2.DOWN * 16)
	for i in range(3):
		enemy28_pattern.append(Vector2.UP * 16)
	
	for i in range(5):
		enemy29_pattern.append(Vector2.RIGHT * 16)
	for i in range(5):
		enemy29_pattern.append(Vector2.LEFT * 16)
	
	for i in range(5):
		enemy30_pattern.append(Vector2.LEFT * 16)
	for i in range(5):
		enemy30_pattern.append(Vector2.RIGHT * 16)
	
	for i in range(5):
		enemy31_pattern.append(Vector2.LEFT * 16)
	for i in range(5):
		enemy31_pattern.append(Vector2.RIGHT * 16)
	
	enemy32_pattern.append(Vector2.DOWN * 16)
	enemy32_pattern.append(Vector2.UP * 16)

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
	
	enemy19_timer += delta
	if enemy19_timer >= move_delay:
		enemy19_timer = 0.0
		move_enemy19()
	
	enemy20_timer += delta
	if enemy20_timer >= move_delay:
		enemy20_timer = 0.0
		move_enemy20()
	
	enemy21_timer += delta
	if enemy21_timer >= move_delay:
		enemy21_timer = 0.0
		move_enemy21()
	
	enemy22_timer += delta
	if enemy22_timer >= move_delay:
		enemy22_timer = 0.0
		move_enemy22()
	
	enemy23_timer += delta
	if enemy23_timer >= move_delay:
		enemy23_timer = 0.0
		move_enemy23()
	
	enemy24_timer += delta
	if enemy24_timer >= move_delay:
		enemy24_timer = 0.0
		move_enemy24()
	
	enemy25_timer += delta
	if enemy25_timer >= move_delay:
		enemy25_timer = 0.0
		move_enemy25()
	
	enemy26_timer += delta
	if enemy26_timer >= move_delay:
		enemy26_timer = 0.0
		move_enemy26()
	
	enemy27_timer += delta
	if enemy27_timer >= move_delay:
		enemy27_timer = 0.0
		move_enemy27()
	
	enemy28_timer += delta
	if enemy28_timer >= move_delay:
		enemy28_timer = 0.0
		move_enemy28()
	
	enemy29_timer += delta
	if enemy29_timer >= move_delay:
		enemy29_timer = 0.0
		move_enemy29()
	
	enemy30_timer += delta
	if enemy30_timer >= move_delay:
		enemy30_timer = 0.0
		move_enemy30()
	
	enemy31_timer += delta
	if enemy31_timer >= move_delay:
		enemy31_timer = 0.0
		move_enemy31()
	
	enemy32_timer += delta
	if enemy32_timer >= move_delay:
		enemy32_timer = 0.0
		move_enemy32()

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

func move_enemy19():
	if enemy19_step < enemy19_pattern.size():
		enemy19.position += enemy19_pattern[enemy19_step]
		enemy19_step += 1
	else:
		enemy19_step = 0

func move_enemy20():
	if enemy20_step < enemy20_pattern.size():
		enemy20.position += enemy20_pattern[enemy20_step]
		enemy20_step += 1
	else:
		enemy20_step = 0

func move_enemy21():
	if enemy21_step < enemy21_pattern.size():
		enemy21.position += enemy21_pattern[enemy21_step]
		enemy21_step += 1
	else:
		enemy21_step = 0

func move_enemy22():
	if enemy22_step < enemy22_pattern.size():
		enemy22.position += enemy22_pattern[enemy22_step]
		enemy22_step += 1
	else:
		enemy22_step = 0

func move_enemy23():
	if enemy23_step < enemy23_pattern.size():
		enemy23.position += enemy23_pattern[enemy23_step]
		enemy23_step += 1
	else:
		enemy23_step = 0

func move_enemy24():
	if enemy24_step < enemy24_pattern.size():
		enemy24.position += enemy24_pattern[enemy24_step]
		enemy24_step += 1
	else:
		enemy24_step = 0

func move_enemy25():
	if enemy25_step < enemy25_pattern.size():
		enemy25.position += enemy25_pattern[enemy25_step]
		enemy25_step += 1
	else:
		enemy25_step = 0

func move_enemy26():
	if enemy26_step < enemy26_pattern.size():
		enemy26.position += enemy26_pattern[enemy26_step]
		enemy26_step += 1
	else:
		enemy26_step = 0

func move_enemy27():
	if enemy27_step < enemy27_pattern.size():
		enemy27.position += enemy27_pattern[enemy27_step]
		enemy27_step += 1
	else:
		enemy27_step = 0

func move_enemy28():
	if enemy28_step < enemy28_pattern.size():
		enemy28.position += enemy28_pattern[enemy28_step]
		enemy28_step += 1
	else:
		enemy28_step = 0

func move_enemy29():
	if enemy29_step < enemy29_pattern.size():
		enemy29.position += enemy29_pattern[enemy29_step]
		enemy29_step += 1
	else:
		enemy29_step = 0

func move_enemy30():
	if enemy30_step < enemy30_pattern.size():
		enemy30.position += enemy30_pattern[enemy30_step]
		enemy30_step += 1
	else:
		enemy30_step = 0

func move_enemy31():
	if enemy31_step < enemy31_pattern.size():
		enemy31.position += enemy31_pattern[enemy31_step]
		enemy31_step += 1
	else:
		enemy31_step = 0

func move_enemy32():
	if enemy32_step < enemy32_pattern.size():
		enemy32.position += enemy32_pattern[enemy32_step]
		enemy32_step += 1
	else:
		enemy32_step = 0
