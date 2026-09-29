class_name Hitbox
extends Area2D
# ==============================================================================
# ⚔️ HITBOX COMPONENT (LƯỚI QUÉT SÁT THƯƠNG)
# Tư duy: Đóng gói toàn bộ thông số của một đòn đánh.
# ==============================================================================

@export var damage: int =25
@export var knockback_force: float = 180.0
@export var sin_amount: float = 15.0

var is_active: bool = false
func _ready() -> void:
	is_active = false
	monitoring = false
	monitorable = false

func activate() -> void:
	is_active = true
	monitoring = true
	monitorable = true
	
func deactivate() -> void:
	is_active = false
	monitoring = false
	monitorable = false
