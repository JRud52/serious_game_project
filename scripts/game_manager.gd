extends Control

var productivity = 100
var money = 500
var action_points = 5

var people
var day = 1

var firewall_bar

func _ready():
	people = get_tree().get_nodes_in_group("People")
	firewall_bar = get_node("sprites_layer/stats_label/firewall_bar")
	pass

func update_values():
	var productivity_total = 0
	for person in people:
		
		person.update_values()
		productivity_total += person.productivity
	productivity = productivity_total / people.size()
	
	pass
	
#func infect_people():
	#for person in people:
		#if person.

func end_day():
	update_values()
	
	money += 500 * productivity / 100
	day += 1
	
	pass