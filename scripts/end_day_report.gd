extends WindowDialog

func _on_next_button_pressed():
	get_node("TabContainer").set_current_tab(1)

func _on_next_day_button_pressed():
	get_node(".").hide()
	get_node("TabContainer").set_current_tab(0)
