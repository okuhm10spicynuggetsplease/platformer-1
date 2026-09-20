class_name level extends Node

signal collectible_updated(int)


@onready var object: Node2D = $Node2D/collectibles


var collectible_count: int = 0


func _ready() -> void:
	await get_tree().process_frame
	connect_signals()

func connect_signals() -> void:
	for child in object.get_children():
		if child is collectible:
			child.is_collected.connect(collectible_collected)

func collectible_collected() -> void:
	collectible_count += 1
	collectible_updated.emit(collectible_count)
