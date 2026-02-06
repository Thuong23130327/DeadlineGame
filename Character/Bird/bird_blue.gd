extends CharacterBody2D


const SPEED = 150.0
const JUMP_VELOCITY = -400.0
@onready var anim = get_node("Container/AnimatedSprite2D")
@onready var container = get_node("Container")
func _physics_process(delta: float) -> void:
	anim.play("fly")
	var direction := Input.get_axis("ui_left", "ui_right")
	var upDown := Input.get_axis("ui_down","ui_up")
	if upDown==1 or upDown==-1:
		velocity.y = -upDown * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)
		
	if direction==1 or direction==-1:
		velocity.x = direction * SPEED
		container.scale.x=-direction
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
