extends Control

var happiness_label
var money_label

func _ready():
	set_process(true)

	happiness_label = get_node("Happiness/Label")
	money_label = get_node("Money/Label")
	
	pass
	
func _process(delta):
	money_label.set_text("Money: $" + str(Game.money))
	happiness_label.set_text("Happiness: " + str(Game.happiness) + "%")
	pass

func _on_ButtonGroup_button_selected( button ):
	if (button.get_text() == "Add Money"):
		Game.money += 10;
	else:
		Game.money -= 10;
	pass # replace with function body
