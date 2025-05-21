extends Area2D

@onready var AnimateEvent = $MissielEvent/EventExplosion
var EventNow : bool = false
var autoplay : bool = true


func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		EventNow = true
		AnimateEvent.play("Kaboom")
	
	
func _changetree():
	get_tree().change_scene_to_file("res://Scenes/end.tscn")
