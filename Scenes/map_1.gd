extends Node2D

@export var _music : AudioStreamMP3

func _music_volume():
	if Input.is_action_pressed("ui_up"):
		
