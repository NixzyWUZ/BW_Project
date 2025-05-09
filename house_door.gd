extends Area2D

var _can_enter = false

func _physics_process(delta: float) -> void:
	if _can_enter and Input.is_action_just_pressed("Enter"):
		get_tree().change_scene_to_file("res://House.tscn")
		

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		_can_enter = true
		print("Pode entrar")
		
