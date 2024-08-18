extends TileMap

var wood = 150000
var steel = 0
var whole_economy = 0
var tile = Vector2i(0, 0)

func manageHotbar():
	if Input.is_key_pressed(KEY_1):
		tile = Vector2i(0, 3)
	if Input.is_key_pressed(KEY_2):
		tile = Vector2i(1, 3)
	if Input.is_key_pressed(KEY_3):
		tile = Vector2i(2, 3)
	if Input.is_key_pressed(KEY_4):
		tile = Vector2i(0, 4)
	if Input.is_key_pressed(KEY_5):
		tile = Vector2i(1, 4)
	if Input.is_key_pressed(KEY_6):
		tile = Vector2i(2, 4)
	if Input.is_key_pressed(KEY_7):
		tile = Vector2i(0, 5)
	if Input.is_key_pressed(KEY_8):
		tile = Vector2i(1, 5)
	if Input.is_key_pressed(KEY_9):
		tile = Vector2i(2, 5)
	return

func handleMats(tile):
	if wood >= 100:
		wood -= 100
		print("You have " + wood + "wood")
		return true
	return false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	var mpos = floor(get_global_mouse_position() / 16)
	manageHotbar()
	if Input.is_action_pressed("place"):
		if handleMats(tile):
			print("Placed")
			set_cell(0, mpos, 1, tile, 0)
	if Input.is_action_pressed("remove"):
		print("Removed")
		set_cell(0, mpos, 1, Vector2i(1, 1), 0)
