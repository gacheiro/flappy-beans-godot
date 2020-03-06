extends Node2D


const types = ["light", "dark"]

func _ready():
	$Top/AnimatedSprite.animation = types[randi() % types.size()]
	$Bottom/AnimatedSprite.animation = types[randi() % types.size()]
