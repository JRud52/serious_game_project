extends Control

var productivity_label
var money_label
var action_points_label
var day_label

func _ready():
	set_process(true)

	productivity_label = get_node("HBoxContainer/productivity_label")
	money_label = get_node("HBoxContainer/money_label")
	action_points_label = get_node("HBoxContainer/action_points_label")
	day_label = get_node("HBoxContainer/day_label")
	pass
	
func _process(delta):
	money_label.set_text("Money: $" + str(Game.money))
	productivity_label.set_text("Productivity: " + str(Game.productivity) + "%")
	action_points_label.set_text("Action Points: " + str(Game.action_points))
	day_label.set_text("Day: " + str(Game.day))
	pass
	