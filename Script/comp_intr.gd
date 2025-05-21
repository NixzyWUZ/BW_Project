extends Area2D

var _open_computer

func _physics_process(delta: float) -> void:
	if _open_computer:
		print("Pode usar")
		if Input.is_action_just_pressed("Enter"):
			$"../Computer/Screen".visible = true

func _on_body_entered(body: Node2D) -> void:
	if body.name == "PlayerHouse":
		_open_computer = true
		$Interact.visible = true

func _on_body_exited(body: Node2D) -> void:
	if body.name == "PlayerHouse":
		_open_computer = false
		$Interact.visible = false
