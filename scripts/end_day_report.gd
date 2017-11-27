extends WindowDialog

func _on_next_button_pressed():
	get_node(".").hide()

func _on_end_day_report_about_to_show():
	var virus_caught_label = get_node("Incidents/virus_caught_label")
	var virus_infections_label = get_node("Incidents/virus_infections_label")
	var virus_removed_label = get_node("Incidents/virus_removed_label")
	
	var malware_caught_label = get_node("Incidents/malware_caught_label")
	var malware_infections_label = get_node("Incidents/malware_infections_label")
	var malware_removed_label = get_node("Incidents/malware_removed_label")
	
	var worm_caught_label = get_node("Incidents/worm_caught_label")
	var worm_infections_label = get_node("Incidents/worm_infections_label")
	var worm_removed_label = get_node("Incidents/worm_removed_label")
	
	virus_caught_label.set_text("Blocked: " + str(Game.virus_caught))
	virus_infections_label.set_text("Infections: " + str(Game.virus_infections))
	virus_removed_label.set_text("Removed: " + str(Game.virus_removed))
	
	malware_caught_label.set_text("Blocked: " + str(Game.malware_caught))
	malware_infections_label.set_text("Infections: " + str(Game.malware_infections))
	malware_removed_label.set_text("Removed: " + str(Game.malware_removed))
	
	worm_caught_label.set_text("Blocked: " + str(Game.worm_caught))
	worm_infections_label.set_text("Infections: " + str(Game.worm_infections))
	worm_removed_label.set_text("Removed: " + str(Game.worm_removed))
