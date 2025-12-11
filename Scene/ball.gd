extends CharacterBody2D

const speed: int = 500
const acc : int = 50

func _physics_process(delta: float) -> void:
	var collision = move_and_collide(velocity * delta)
	if collision:
		velocity = velocity.bounce(collision.get_normal())
	#move_and_slide()

func _ready() -> void:
	#velocity = velocity * speed
	print("Ball is ready! Initializing...") # Check your "Output" tab for this
	#initialize()
	initialize()
	
#func new_ball():
	#get_tree().get_first_node_in_group("Ball")
	
func initialize():
	var angle = randf_range(0, 2 * PI)
	velocity = Vector2(cos(angle), sin(angle)).normalized() * speed
	position = get_viewport_rect().size / 2.0
