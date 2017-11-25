extends HBoxContainer

func _ready():
	pass


func _on_Button_pressed():
	Game.money += 10
	pass 


func _on_Button_2_pressed():
	Game.money -= 10
	pass 
