extends Control

var intelligence
var productivity = 100
var infections

func _ready():
	# [prod_impact, difficulty]
	infections = []
	
	intelligence = int(rand_range(11,101))

func update_values():
	productivity = 100
	for infection in infections:
		productivity -= infection
	
	if productivity < 0: 
		productivity = 0
	