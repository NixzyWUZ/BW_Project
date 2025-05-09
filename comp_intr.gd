extends Area2D

var _open_computer

func _physics_process(delta: float) -> void:
	if _open_computer:
		if Input.is_action_just_pressed("Enter"):
			$"../Computer/Screen".visible = true

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		_open_computer = true

func _on_body_exited(body: Node2D) -> void:
	if body.name == "Player":
		_open_computer = false
