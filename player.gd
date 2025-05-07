extends CharacterBody2D

@export var run_speed = 340
@export var walk_speed = 120
@export_range(0, 1) var desaceleration = 0.1
@export_range(0, 1) var acceleration = 0.1

@onready var ap = $AnimatedSprite2D

const JUMP_VELOCITY = -400.0
var is_running = false
var speed

func _physics_process(delta: float) -> void:
	
	print(velocity.x)
	print(velocity.y)
	print(ap.flip_h)
	
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
	
	
	# Handle jump.
	if Input.is_action_just_pressed("Jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY
	

	
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("Left", "Right")
	if direction:
		
		if Input.is_action_pressed("Run"):
			speed = run_speed
			is_running = true
		else:
			speed = walk_speed
		
		
		velocity.x = move_toward(velocity.x ,direction * speed, speed * acceleration)
		print("walk")
		if direction < 0:
			ap.flip_h = true
		else:
			ap.flip_h = false
	else:
		is_running = false
		velocity.x = move_toward(velocity.x, 0, walk_speed * desaceleration)
		print("stop")
		
	animacao_player(direction)
	move_and_slide()

func animacao_player(direction):

	if velocity.y > 0:
		ap.play("Fall")
	elif velocity.y < 0:
		ap.play("JumpAM")
	elif is_running:
		ap.play("Sprint")
	elif velocity.x != 0:
		ap.play("WalkAM")
	else:
		ap.play("IdleAM")
