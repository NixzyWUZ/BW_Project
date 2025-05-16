extends Control

@export var Animation_Player : AnimationPlayer
@export var autoplay : bool = false
@export var change_scene = PackedScene

func _input(event):
	if event.is_action_pressed("Resume") and not Animation_Player.is_playing():
		Animation_Player.play()

func _pause():
	if autoplay == false:
		Animation_Player.pause()
		
func _changescene():
	get_tree().change_scene_to_packed(change_scene)
