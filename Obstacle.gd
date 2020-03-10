extends Node2D


const types = ["light", "dark"]

func _ready():
	$Top/AnimatedSprite.animation = types[randi() % types.size()]
	$Bottom/AnimatedSprite.animation = types[randi() % types.size()]


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
