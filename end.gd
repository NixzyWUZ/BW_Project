extends Area2D
@export var nextscene : PackedScene
var time_end : bool = false

func _end():
	if time_end:
		get_tree().change_scene_to_packed(nextscene)

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		time_end = true
