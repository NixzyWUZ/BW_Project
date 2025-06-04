extends CanvasLayer

var player = null
@onready var current_Animetion = $"../AnimationPlayer"


func _on_d_1_coliision_body_entered(body: Node2D) -> void: #D1
	if body.name == "Player":
		body = player
		current_Animetion.play("D1")
