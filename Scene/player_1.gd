extends Paddle


func get_input():
	input_vector = Input.get_axis("up" , "down")
	velocity.y = input_vector * movement_speed

func _physics_process(_delta: float) -> void:
	get_input()
	move_and_slide()
	
	
	
	
