extends Node2D

@export var max_health: int = 100
var current_health: int = 100
var original_color: Color

@onready var visual_box: ColorRect = $VisualBox
@onready var hurtbox: Hurtbox = $HurtBox

func _ready() -> void:
	current_health = max_health
	if visual_box:
		original_color = visual_box.color
		
	if hurtbox:
		hurtbox.hit_received.connect(_on_hit_received)
		
func _on_hit_received(damage:int, knockback_force:float, sin_amount:float):
	current_health -= damage
	print("⚔️ BÙ NHÌN BỊ CHÉM! Mất ", damage, " máu! Máu còn lại: ", current_health, " (Tội lỗi tích lũy: +", sin_amount, ")")
	
	visual_box.color = Color(1.0, 1.0, 1.0)
	await get_tree().create_timer(0.1).timeout
		
	visual_box.color = original_color
