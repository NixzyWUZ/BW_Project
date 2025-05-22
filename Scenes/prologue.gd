extends Control

@export var text_anime : AnimationPlayer
@onready 

var autoplay  = bool(false)

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("Resume") and not text_anime.is_playing():
		text_anime.play()
		$Next.visible = false

func _pause():
	if autoplay == false:
		text_anime.pause()
		$Next.visible = true


func _changescene():
	get_tree().change_scene_to_file("res://Scenes/Map1.tscn")
