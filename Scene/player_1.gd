extends Paddle

@export var movement_speed: float = 300

var input_vector = Vector2.ZERO

func get_input():
	input_vector = Input.get_axis("up" , "down")
	velocity.y = input_vector * movement_speed

func _physics_process(delta: float) -> void:
	get_input()
	move_and_slide()
	
	
	
	
