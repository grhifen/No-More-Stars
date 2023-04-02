extends Node2D

onready var sprite = $Sprite

func _process(delta):
	sprite.global_position = sprite.global_position.linear_interpolate($KinematicBody2D.global_position, 0.1)
	
	# WHY WHY DO I HAVE TO USE MATH
	# Soon we shall have worm.
	
