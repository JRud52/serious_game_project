extends Control

var happiness = 100
var money = 1000
var action_points = 5

#var people
var firewall_upgrades
var day = 1

func _ready():
	firewall_upgrades = [
	[false, 100], 
	[false, 200], 
	[false, 300], 
	[false, 400]
	]
	
	pass
	
func update_values():
	pass

func end_day():
	update_values()
	day += 1
	
	pass