extends CharacterBody2D


@export var speed: float = 2048
@export var player: int = 0 # 0 or 1
@export var custom_color: Color = Color.WHITE
@export var goal_static_body: StaticBody2D


@onready var initial_x_position = position.x

func _ready():
	modulate = custom_color


func _physics_process(delta: float) -> void:
	velocity -= velocity * delta * 4.0
	if player == 0:
		if Input.is_action_pressed("ui_up"):
			velocity.y -= speed * delta
		if Input.is_action_pressed("ui_down"):
			velocity.y += speed * delta
	if player == 1:
		if Input.is_action_pressed("ui_home"):
			velocity.y -= speed * delta
		if Input.is_action_pressed("ui_end"):
			velocity.y += speed * delta
	velocity = round(velocity * 30.0) / 30.0
	move_and_slide()
	
	position.x = initial_x_position
