extends RigidBody2D

signal die

var FLAP_IMPULSE = -300
var alive = true


func start():
	pass


func flap():
	if alive:
		linear_velocity.y = 0
		apply_central_impulse(Vector2(0, FLAP_IMPULSE))


func _ready():
	pass # Replace with function body.


func _process(delta):
	pass


func _on_Player_body_entered(body):
	alive = false
	$AnimatedSprite.animation = "dead"
	$CollisionShape2D.set_deferred("disabled", true)
	emit_signal("die")
