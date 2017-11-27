extends Control

var day = 1
var productivity = 100
var money = 500

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
	var firewall_upgrades = get_node("/root/Menu/hud_layer/action_menu/buy_panel/TabContainer/Firewall")
	var antivirus_upgrades = get_node("/root/Menu/hud_layer/action_menu/buy_panel/TabContainer/Antivirus")
	var malware_upgrades = get_node("/root/Menu/hud_layer/action_menu/buy_panel/TabContainer/Malware Scan")
	var ad_upgrades = get_node("/root/Menu/hud_layer/action_menu/buy_panel/TabContainer/Ad Blocker")
	
	for person in people:
		var firewall_block_chance = int(rand_range(1, 101))
		var virus_remove_chance = int(rand_range(1, 101))
		var malware_remove_chance = int(rand_range(1, 101))
		var worm_remove_chance = int(rand_range(1, 101))
		
		if person.virus_infections.size() > 0:
			for virus in person.virus_infections:
				if virus_remove_chance < 50 * antivirus_upgrades.percent_done / 100:
					person.virus_infections.erase(virus)
					virus_removed += 1
					
		if person.malware_infections.size() > 0:
			for malware in person.malware_infections:
				if malware_remove_chance < 30 * malware_upgrades.percent_done / 100:
					person.malware_infections.erase(malware)
					malware_removed += 1
					
		if person.worm_infections.size() > 0:
			for worm in person.worm_infections:
				if worm_remove_chance < 10 * malware_upgrades.percent_done / 100:
					person.worm_infections.erase(worm)
					worm_removed += 1
		
		var choose = int(rand_range(1, 101))
		
		if choose < 3:
			if firewall_block_chance < 50 * firewall_upgrades.percent_done / 100:
				worm_caught += 1
			else:
				person.worm_infections.push_front(int(rand_range(50,101)))
				worm_infections += 1
		elif choose < 15:
			if firewall_block_chance < 62 * firewall_upgrades.percent_done / 100:
				malware_caught += 1
			else:
				person.malware_infections.push_front(int(rand_range(20,50)))
				malware_infections += 1
		elif choose < 80 - (40 * ad_upgrades.percent_done / 100):
			if firewall_block_chance < 75 * firewall_upgrades.percent_done / 100:
				virus_caught += 1
			else:
				person.virus_infections.push_front(int(rand_range(1,20)))
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
