extends Control

var day = 1
var productivity = 100
var money = 500
var action_points = 5

var virus_caught = 0
var virus_infections = 0
var virus_removed = 0

var malware_caught = 0
var malware_infections = 0
var malware_removed = 0

var worm_caught = 0
var worm_infections = 0
var worm_removed = 0

var people

func _ready():
	randomize()
	people = get_tree().get_nodes_in_group("People")

func infect_people():
	var upgrades = get_node("/root/Menu/hud_layer/action_menu/buy_panel/TabContainer/Firewall")
	var defence_value = upgrades.percent_done
	
	for person in people:
		var choose = int(rand_range(1, 101))
		
		if choose < 3:
			person.infections.push_front(int(rand_range(50,101)))
			worm_infections += 1
		elif choose < 15:
			person.infections.push_front(int(rand_range(20,50)))
			malware_infections += 1
		elif choose < 40:
			person.infections.push_front(int(rand_range(1,20)))
			virus_infections += 1

func end_day():
	infect_people()
	get_tree().call_group(0, "People", "update_values")
	
	var productivity_total = 0
	for person in people:
		productivity_total += person.productivity
	Game.productivity = productivity_total / people.size()
	
	Game.productivity -= 50
	Game.money += 500 * (Game.productivity / 50.0)
	Game.productivity += 50
		
	Game.day += 1
