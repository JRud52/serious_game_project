extends WindowDialog

func _on_next_button_pressed():
	get_node(".").hide()

func _on_end_day_report_about_to_show():
	var virus_caught_label = get_node("Incidents/virus_caught_label")
	var virus_infections_label = get_node("Incidents/virus_infections_label")
	var virus_removed_label = get_node("Incidents/virus_removed_label")
	
	virus_caught_label.set_text("Caught: " + str(Game.virus_caught))
	virus_infections_label.set_text("Infections: " + str(Game.virus_infections))
	virus_removed_label.set_text("Removed: " + str(Game.virus_removed))
