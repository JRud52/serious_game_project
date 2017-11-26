extends Control

var person1_bar
var person1
var person2_bar
var person2
var person3_bar
var person3
var person4_bar
var person4

var firewall_bar
var firewall_upgrades

func _ready():
	set_fixed_process(true)
	
	person1_bar = get_node("sprites_layer/stats_label2/person1_bar")
	person1 = get_node("sprites_layer/person_1")
	person2_bar = get_node("sprites_layer/stats_label2/person2_bar")
	person2 = get_node("sprites_layer/person_2")
	person3_bar = get_node("sprites_layer/stats_label2/person3_bar")
	person3 = get_node("sprites_layer/person_3")
	person4_bar = get_node("sprites_layer/stats_label2/person4_bar")
	person4 = get_node("sprites_layer/person_4")
	
	firewall_bar = get_node("sprites_layer/stats_label/firewall_bar")
	firewall_upgrades = get_node("hud_layer/action_menu/buy_panel/TabContainer/Firewall")

func _fixed_process(delta):
	firewall_bar.set_val(firewall_upgrades.percent_done)
	#firewall_bar.set_val(firewall_upgrades.percent_done)
	#firewall_bar.set_val(firewall_upgrades.percent_done)
	#firewall_bar.set_val(firewall_upgrades.percent_done)
	
	person1_bar.set_val(person1.productivity)
	person2_bar.set_val(person2.productivity)
	person3_bar.set_val(person3.productivity)
	person4_bar.set_val(person4.productivity)
