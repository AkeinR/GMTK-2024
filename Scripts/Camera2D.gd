extends Camera2D


@export var panSpeed = 1000

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var dir = Input.get_vector("left", "right", "up", "down")
	print(position + ((dir * panSpeed) * delta))
	position += ((dir * panSpeed) * delta)
	print(position)
