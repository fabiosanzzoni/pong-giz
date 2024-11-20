extends CharacterBody2D

var speed: int = 300

func _physics_process(delta: float) -> void:
	
	position.y = clamp(position.y, 70, 575)
	
	if Input.is_action_pressed("keyboard_w"):
		position.y -= speed * delta
	if Input.is_action_pressed("keyboard_s"):
		position.y += speed * delta
