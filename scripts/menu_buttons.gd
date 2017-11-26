extends Panel

func _ready():
	pass

func _on_Purchase_Button_pressed():
	var buy_panel = get_parent().get_node("buy_panel").popup()
	pass 

func _on_End_Day_Button_pressed():
	Game.end_day()
	pass # replace with function body
