extends Node2D

@export var animation_player : AnimationPlayer
@export var autoplay : bool = false
@export var nextscene : PackedScene

func _input(event):
	if event.is_action_pressed("Resume") and not animation_player.is_playing():
		animation_player.play()
		$Caracthers/Button.visible = false

func _pause():
	if autoplay == false:
		animation_player.pause()
		$Caracthers/Button.visible = true
		
func _changescene():
	get_tree().change_scene_to_packed(nextscene)
