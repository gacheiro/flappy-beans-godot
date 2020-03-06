extends CanvasLayer

signal start_game

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_PlayButton_pressed():
	emit_signal("start_game")

func hide():
	$Intro.hide()
	
func show():
	$Intro.show()

