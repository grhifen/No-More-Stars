extends KinematicBody2D

export var speed = 300
var velocity = Vector2()
var mouse_position = null
var direction

func _physics_process(_delta):
	
	velocity = Vector2(0, 0)
	mouse_position = get_global_mouse_position()
	
	if Input.is_action_pressed("forward"):
		direction = (mouse_position - position).normalized()
		velocity = (direction * speed)
		
	if Input.is_action_just_pressed("forward"):
		direction = (mouse_position - position).normalized()
		velocity = (direction * speed) * 2
	
	move_and_slide(velocity)
	look_at(mouse_position)
