extends Control

@onready var ball = preload("res://Pong/Scene/ball.tscn")
var current_ball: CharacterBody2D = null

var score := [0,0]

func _ready() -> void:
	spawn_ball()
	
func spawn_ball():
	if is_instance_valid(current_ball):
		current_ball.queue_free()
	var new_ball: CharacterBody2D = ball.instantiate()
	add_child(new_ball)
	current_ball = new_ball
