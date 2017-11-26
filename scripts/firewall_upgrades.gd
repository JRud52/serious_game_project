extends Container

var firewall_upgrades

func _ready():
	firewall_upgrades = [
	[false, 100, 1], 
	[false, 200, 3], 
	[false, 300, 5], 
	[false, 400, 7]
	]
	
	pass
	
func _on_buy_1_pressed():
	if Game.money >= firewall_upgrades[0][1]:
		firewall_upgrades[0][0] = true
		Game.money -= firewall_upgrades[0][1]
		Game.update_values()
		get_node("firewall_details/Upgrade 1/buy_1").set_disabled(true)
	pass


func _on_buy_2_pressed():
	if Game.money >= firewall_upgrades[1][1]:
		firewall_upgrades[1][0] = true
		Game.money -= firewall_upgrades[1][1]
		get_node("firewall_details/Upgrade 2/buy_2").set_disabled(true)
	pass


func _on_buy_3_pressed():
	if Game.money >= firewall_upgrades[2][1]:
		firewall_upgrades[2][0] = true
		Game.money -= firewall_upgrades[2][1]
		get_node("firewall_details/Upgrade 3/buy_3").set_disabled(true)
	pass


func _on_buy_4_pressed():
	if Game.money >= firewall_upgrades[3][1]:
		firewall_upgrades[3][0] = true
		Game.money -= firewall_upgrades[3][1]
		get_node("firewall_details/Upgrade 4/buy_4").set_disabled(true)
	pass
