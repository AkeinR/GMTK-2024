extends Camera2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var mVel = Input.get_last_mouse_velocity()
	if Input.is_action_pressed("pan"):
		position = (mVel * delta) * 16