extends Node2D

@export var ball: PackedScene

var current_ball: Node2D

var left_score = 0 # Player 1 score
var right_score = 0 # Player 2 score



func _ready():
	# instantiate ball in middle of screen
	var ball_instance = ball.instantiate()
	add_child(ball_instance)

	ball_instance.position = get_viewport_rect().size / 2

	current_ball = ball_instance



func _process(delta):
	if current_ball == null:
		var ball_instance = ball.instantiate()
		add_child(ball_instance)
		
		ball_instance.position = get_viewport_rect().size / 2
		
		current_ball = ball_instance




func _on_goal_1_body_exited(body):
	left_score += 1
	$CanvasLayer/Control/Label1.text = "Left: " + str(left_score)
	current_ball.queue_free()
	current_ball = null


func _on_goal_2_body_exited(body):
	right_score += 1
	$CanvasLayer/Control/Label2.text = "Right: " + str(right_score)
	current_ball.queue_free()
	current_ball = null
