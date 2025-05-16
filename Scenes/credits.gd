extends TextureButton
@onready var CreditsLabel = $"../Credits_Panel"



func _on_pressed() -> void:
	CreditsLabel.visible = true
	
