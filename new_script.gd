extends Node

@export var Animated : AnimationPlayer

var autoplay = bool(false)

func _pause():
	if autoplay == false:
		Animated.pause()
