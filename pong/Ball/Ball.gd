extends KinematicBody2D

var speed = 600
var velocity = Vector2.ZERO

func _ready():
	randomize()
	velocity.x = [-1,1][randi() % 2]
	velocity.y = [-0.8,0.8][randi() % 2]
	
func _physics_process(delta):
	var collision_obj = move_and_collide(velocity * speed * delta)
	if collision_obj:
		velocity = velocity.bounce(collision_obj.normal)
