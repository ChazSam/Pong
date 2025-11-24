extends Paddle


func get_input():
	var input_vector = Input.get_axis("up" , "down")
	velocity.y = input_vector * movement_speed

func _physics_process(_delta: float) -> void:
	position.y = clamp(position.y, 0, screen_size.y - $ColorRect.size.y)
	
	#var sprite = $ColorRect
	#var size = sprite.size.y
	#print(size)
	
	get_input()
	move_and_slide()
	
	
	
	
