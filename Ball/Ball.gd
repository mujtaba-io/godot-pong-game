extends RigidBody2D


func _ready():
	apply_central_impulse(Vector2(-200, 0))



func _on_body_entered(body):
	print(linear_velocity.length())
	if linear_velocity.length() < 232:
		apply_central_impulse(linear_velocity.normalized() * 10)
	
	if linear_velocity.normalized().y > 0.95:
		apply_central_impulse(Vector2(-50, 0))
	
