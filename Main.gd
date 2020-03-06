extends Node

const Obstacle = preload("res://Obstacle.tscn")

var active = false
var velocity_x = 20
var score = 50


func _ready():
	$GameOverHUD.hide()
	

func play():
	active = true
	$HUD.hide()
	$Player.start()
	$Player.flap()
	$ObstacleTimer.start()


func game_over():
	# Stop the player from moving
	$Player.applied_force.x = 0
	Score.set_run_score(score)
	$GameOverHUD.show()


func _process(delta):
	# Updates the player's movements
	if active and $Player.alive:
		$Player.applied_force.x = velocity_x
		if Input.is_action_just_pressed("flap"):
			$Player.flap()
			
	# Updates the floor static body position
	$Floor.position.x = $Player.position.x
	# Updates the location obstacles spawn
	$ObstacleSpawn.position.x = $Player.position.x + 300
	# Updates the current score
	$HUD/Score.text = str(score)


func _on_ObstacleTimer_timeout():
	var obstacle = Obstacle.instance()
	var y = rand_range(-50, 150)
	obstacle.position = Vector2($ObstacleSpawn.position.x, y)
	add_child(obstacle)
	

func _on_GameOverHUD_new_game():
	get_tree().reload_current_scene()
