class_name collectible extends Area2D

signal is_collected

var collected: bool = false


func _on_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D and not collected:
		collected = true
		is_collected.emit()
		queue_free()
