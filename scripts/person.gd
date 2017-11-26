extends Control

var intelligence
var productivity = 100
var infections

func _ready():
	# [prod_impact, difficulty]
	infections = []
	
	intelligence = int(rand_range(11,101))
	update_values()
	pass

func update_values():
	productivity = 100
	for infection in infections:
		productivity -= infection[0] * 10
		
	if productivity < 0: 
		productivity = 0
		
	pass