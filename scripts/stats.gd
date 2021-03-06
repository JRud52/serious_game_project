extends Control

var productivity_label
var money_label
var day_label

func _ready():
	set_process(true)

	productivity_label = get_node("HBoxContainer/productivity_label")
	money_label = get_node("HBoxContainer/money_label")
	day_label = get_node("HBoxContainer/day_label")
	
func _process(delta):
	money_label.set_text("Money: $" + str(Game.money))
	productivity_label.set_text("Productivity: " + str(Game.productivity) + "%")
	day_label.set_text("Day: " + str(Game.day))
	