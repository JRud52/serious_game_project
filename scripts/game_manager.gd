extends Node

var happiness = 100
var money = 1000
var action_points = 5

var people
var upgrades

func _ready():
	people = [get_node("sprites_layer/person")]
	pass
	
func update_values():
	pass

func end_day():
	update_values()
	
	pass