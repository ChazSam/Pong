class_name Paddle
extends CharacterBody2D

@export var movement_speed: float = 900
@onready var screen_size = get_viewport_rect().size

func _process(_delta: float) -> void:
		position.y = clamp(position.y, 5, screen_size.y - $ColorRect.size.y - 5)
