extends WindowDialog

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass


func _on_buy_panel_about_to_show():
	pass # replace with function body


func _on_buy_1_pressed():
	Game.firewall_upgrades[0][0] = true
	Game.money -= Game.firewall_upgrades[0][1]
	get_node("TabContainer/Firewall/firewall_details/Upgrade 1/buy_1").set_disabled(true)
	pass # replace with function body
