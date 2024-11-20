extends RigidBody2D

var speed: int = 400
var direction: Vector2 = Vector2(0,0)
var initial_position: Vector2 = Vector2(577,327)

func _ready() -> void:

	direction.x = [-1,1].pick_random()
	direction.y = [-1,1].pick_random()
	direction = Vector2(direction.x, direction.y)

func _process(delta: float) -> void:
	position += direction * speed * delta
