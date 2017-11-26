extends Panel

func _ready():
	pass

func _on_Purchase_Button_pressed():
	get_node("buy_panel").popup()
	pass 

func _on_End_Day_Button_pressed():
	get_node("end_day_report").popup()
	Game.end_day()
	pass # replace with function body
