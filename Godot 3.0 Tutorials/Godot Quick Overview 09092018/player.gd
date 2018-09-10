extends KinematicBody2D

var vel = Vector2()
var input = Vector2()
export var speed = 0 #because we used exports, we can access this on the property panel


func _process(delta):
	if Input.is_action_pressed("up"):
		input.y = -1
	elif Input.is_action_pressed("down"):
		input.y = 1
	else:
		input.y = 0
	
	if Input.is_action_pressed("right"):
		input.x = 1
	elif Input.is_action_pressed("left"):
		input.x = -1
	else:
		input.x = 0
		
	input.normalized()
	
	move_and_slide(input * speed)