extends CharacterBody2D

var speed = 300

func _physics_process(delta: float) -> void:
	
	position.y = clamp(position.y, 70, 575)
	
	if Input.is_action_pressed("keyboard_up"):
		position.y -= speed * delta
	if Input.is_action_pressed("keyboard_down"):
		position.y += speed * delta
