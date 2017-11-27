extends Control

var productivity = 100

var virus_infections
var malware_infections
var worm_infections

func _ready():
	virus_infections = []
	malware_infections = []
	worm_infections = []

func update_values():
	productivity = 100
	for virus in virus_infections:
		productivity -= virus
		
	for malware in malware_infections:
		productivity -= malware
		
	for worm in worm_infections:
		productivity -= worm
	
	if productivity < 0: 
		productivity = 0
	