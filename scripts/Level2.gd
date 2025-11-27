extends Node2D

onready var enemy1 = $Enemy1  
onready var enemy2 = $Enemy2  

var movement_pattern = [
	Vector2.LEFT * 16,   
	Vector2.LEFT * 16,   
	Vector2.UP * 16,     
	Vector2.UP * 16,     
	Vector2.UP * 16,     
	Vector2.DOWN * 16,   
	Vector2.DOWN * 16,   
	Vector2.DOWN * 16,   
	Vector2.RIGHT * 16,  
	Vector2.RIGHT * 16   
]

var current_step = 0
var move_timer = 0.0
var move_delay = 0.5  

func _ready():
	print("Level 2")

func _process(delta):
	move_timer += delta
	if move_timer >= move_delay:
		move_timer = 0.0
		move_enemies()

func move_enemies():
	if current_step < movement_pattern.size():
		enemy1.position += movement_pattern[current_step]
		enemy2.position += movement_pattern[current_step]
		
		current_step += 1
	else:
		current_step = 0
