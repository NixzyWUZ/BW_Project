extends Node2D

@export var InteractAnimation : AnimationPlayer
@export var autoplay :  bool = true

func _ready() -> void:
	if autoplay:
		InteractAnimation.play()
