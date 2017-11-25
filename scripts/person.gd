extends Sprite

var happiness = 100
var intelligence

func _ready():
	intelligence = int(rand_range(1,101))
	set_process(true)
	pass

func _process(delta):
	
	pass