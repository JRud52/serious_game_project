extends WindowDialog

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
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
