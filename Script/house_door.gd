extends Area2D

var _can_enter = false

func _physics_process(delta: float) -> void:
	if _can_enter and Input.is_action_pressed("Enter"):
		get_tree().change_scene_to_file("res://Scenes/House.tscn")


func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		_can_enter = true


func _on_body_exited(body: Node2D) -> void:
	if  body.name == "Player":
		_can_enter = false
