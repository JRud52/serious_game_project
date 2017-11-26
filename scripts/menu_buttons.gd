extends HBoxContainer

func _ready():
	pass

func _on_Purchase_Button_pressed():
	var buy_panel = get_parent().get_node("buy_panel").popup()
	add_child(buy_panel)
	Game.money += 10
	pass 

func _on_Button_2_pressed():
	Game.money -= 10
	pass 
