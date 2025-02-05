extends RigidBody2D


var minimum_velocity: float = 232

func _ready():
	apply_central_impulse(Vector2(-200, 0))



func _on_body_entered(body):
	if linear_velocity.length() < minimum_velocity:
		apply_central_impulse(linear_velocity.normalized() * 10)
	
	if linear_velocity.normalized().y > 0.95:
		apply_central_impulse(Vector2(-50, 0))
	
