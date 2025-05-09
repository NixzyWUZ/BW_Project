extends Area2D

var _can_exit = false

func _physics_process(delta: float) -> void:
	if _can_exit:
		if Input.is_action_just_pressed("Enter"):
			get_tree().change_scene_to_file("res://map_1_5.tscn")

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		_can_exit = true
		print("Can exit")


func _on_body_exited(body: Node2D) -> void:
	if body.name == "Player":
		_can_exit = false
