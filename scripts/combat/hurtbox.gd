class_name Hurtbox
extends Area2D
# ==============================================================================
# HURTBOX COMPONENT (VÙNG DA THỊT NHẬN ĐÒN)
# Bắn tín hiệu (Event/Signal) báo cho Node cha.
# ==============================================================================

signal hit_received(damage: int, knockback_force: float, sin_amount: float)

func _ready() -> void:
	area_entered.connect(_on_area_entered)

func _on_area_entered(other_area: Area2D) -> void:
	if other_area is Hitbox:
		var hitbox = other_area as Hitbox
		hit_received.emit(hitbox.damage, hitbox.knockback_force, hitbox.sin_amount)
