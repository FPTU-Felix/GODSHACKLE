class_name BaseWeapon
extends Node2D
# ==============================================================================
# BASE WEAPON (LỚP CƠ SỞ CHO MỌI VŨ KHÍ)
# Tư duy: Abstract Class trong Java.
# ==============================================================================

@export var weapon_name: String = "Base Weapon"
@export var damage: int = 20

var is_busy: bool = false

func attack() -> void:
	pass
	
func is_attacking()-> bool:
	return is_busy

func dash_attack() -> void:
	pass
