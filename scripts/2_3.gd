extends Button

signal changing_player_2_3

var player:bool = true

func _on_toggled(toggled):
	var iconNumb:int = randi_range(1,3)
	if player == true:
		if iconNumb == 1:
			$"../2_3".icon = preload("res://assets/x1.png")
		elif iconNumb == 2:
			$"../2_3".icon = preload("res://assets/x2.png")
		else:
			$"../2_3".icon = preload("res://assets/x3.png")
	else:
		if iconNumb == 1:
			$"../2_3".icon = preload("res://assets/o1.png")
		elif iconNumb == 2:
			$"../2_3".icon = preload("res://assets/o2.png")
		else:
			$"../2_3".icon = preload("res://assets/o3.png")
		
	
	$"../2_3".disabled = true
	changing_player_2_3.emit()


func _on_main_changed_player():
	if player == true:
		player = false
	else:
		player = true
