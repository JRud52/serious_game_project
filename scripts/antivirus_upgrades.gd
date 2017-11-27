extends Container

var antivirus_upgrades
var percent_done = 0

func _ready():
	antivirus_upgrades = [
	[false, 100], 
	[false, 200], 
	[false, 300], 
	[false, 400]
	]
	
func _on_buy_1_pressed():
	if Game.money >= antivirus_upgrades[0][1]:
		antivirus_upgrades[0][0] = true
		Game.money -= antivirus_upgrades[0][1]
		percent_done += 25
		get_node("antivirus_details/Upgrade 1/buy_1").set_disabled(true)

func _on_buy_2_pressed():
	if Game.money >= antivirus_upgrades[1][1]:
		antivirus_upgrades[1][0] = true
		Game.money -= antivirus_upgrades[1][1]
		percent_done += 25
		get_node("antivirus_details/Upgrade 2/buy_2").set_disabled(true)

func _on_buy_3_pressed():
	if Game.money >= antivirus_upgrades[2][1]:
		antivirus_upgrades[2][0] = true
		Game.money -= antivirus_upgrades[2][1]
		percent_done += 25
		get_node("antivirus_details/Upgrade 3/buy_3").set_disabled(true)

func _on_buy_4_pressed():
	if Game.money >= antivirus_upgrades[3][1]:
		antivirus_upgrades[3][0] = true
		Game.money -= antivirus_upgrades[3][1]
		percent_done += 25
		get_node("antivirus_details/Upgrade 4/buy_4").set_disabled(true)
