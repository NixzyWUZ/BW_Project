extends Area2D
var time_end = false

func _physics_process(delta: float) -> void:
	if time_end:
		get_tree().change_scene_to_file("res://Scenes/end.tscn")

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		time_end = true
