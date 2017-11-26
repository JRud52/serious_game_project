extends Control

var happiness_label
var money_label
var action_points_label

func _ready():
	set_process(true)

	happiness_label = get_node("Happiness/Label")
	money_label = get_node("Money/Label")
	action_points_label = get_node("Action Points/Label")
	pass
	
func _process(delta):
	money_label.set_text("Money: $" + str(Game.money))
	happiness_label.set_text("Happiness: " + str(Game.happiness) + "%")
	action_points_label.set_text("Action Points: " + str(Game.action_points))
	pass
	