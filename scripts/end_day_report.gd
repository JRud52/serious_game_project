extends WindowDialog

func _ready():
	pass


func _on_next_button_pressed():
	get_node("TabContainer").set_current_tab(1)
	pass # replace with function body


func _on_next_day_button_pressed():
	get_node(".").hide()
	get_node("TabContainer").set_current_tab(0)
	pass # replace with function body


func _on_end_day_report_about_to_show():
	
	pass # replace with function body
