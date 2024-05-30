extends KinematicBody2D
#Define the character speed
var speed= 500
#	Dfining Direcction of the player
var direction = Vector2()
#levantadno una funcion
func _physics_process(delta):
	if Input.is_action_pressed("ui_right"):
		direction.x = -speed
	elif Input.is_action_pressed("ui_left"):
		direction.x = +speed
	else:
		direction.x = 0
		
	move_and_slide(direction, Vector2.UP)
