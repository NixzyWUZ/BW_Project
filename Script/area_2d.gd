extends Area2D

var player: Node2D = null
# Called when the node enters the scene tree for the first time.


func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		player = body
		if Input.is_action_pressed("Enter"):
			get_tree().change_scene_to_file("res://House.tscn")
