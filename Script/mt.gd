extends Sprite2D


#Não se altera NADA AQUI por enquanto

@onready var sprite: AnimatedSprite2D = $AnimatedSprite2D
var player: Node2D = null

func _physics_process(delta: float) -> void:
	if player:
		if player.position.x < position.x:
			sprite.flip_h = false
		else:
			sprite.flip_h = true

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		player = body


func _on_area_2d_body_exited(body: Node2D) -> void:
	if body == player:
		player = null
