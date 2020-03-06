extends CanvasLayer

signal new_game

func show():
	$HUD/Panel/Score.text = str(Score.score)
	$HUD/Panel/Best.text = str(Score.best)
	$HUD.show()
	
func hide():
	$HUD.hide()

func _on_OkButton_pressed():
	emit_signal("new_game")
