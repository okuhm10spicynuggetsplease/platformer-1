class_name collectibleUI extends Panel

@onready var label: Label = $collectiblecountlabel


func update(amount: int) -> void:
	label.text = str(amount)
