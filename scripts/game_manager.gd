extends Node

var delta_interval = 1
var delta_total = 0

var happiness = 100
var happiness_rate = 1

var money = 1000
var money_rate = 1

func _ready():
	#set_process(true)
	set_fixed_process(true)
	pass
	
func _fixed_process(delta):
	delta_total += delta
	if delta_total > delta_interval:
		delta_total = 0
		
		money += money_rate
		if money_rate > 0:
			happiness = 100
			
func end_day():
	
	pass