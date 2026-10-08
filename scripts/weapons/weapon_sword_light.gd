class_name WeaponSwordLight
extends BaseWeapon

@export var attack_duration: float=0.2
@onready var sword_visual: ColorRect=$SwordVisual
@onready var hitbox: Hitbox = $Hitbox
var combo_step: int = 1
var combo_reset_timer: float = 0.0
const COMBO_WINDOW: float =0.5

func _ready() -> void:
	weapon_name = "Kiếm Đơn Ánh Sáng"
	damage=25
	if sword_visual:
		sword_visual.visible=false
	if hitbox:
		hitbox.deactivate()
		
func _process(delta: float) -> void:
	if combo_reset_timer > 0:
		combo_reset_timer-=delta
	else:
		if not is_busy:
			combo_step=1

func attack() -> void:
	if is_busy:
		return
		
	is_busy = true
	
	match combo_step:
		1:
			sword_visual.offset_top = -45.0
			sword_visual.offset_bottom = -30.0
			sword_visual.offset_right = 66.0
			hitbox.damage = 25
			combo_step = 2
		2:
			sword_visual.offset_top = -65.0
			sword_visual.offset_bottom = -50.0
			sword_visual.offset_right = 60.0
			hitbox.damage = 25
			combo_step = 3
		3:
			sword_visual.offset_top = -45.0
			sword_visual.offset_bottom = -30.0
			sword_visual.offset_right = 90.0
			hitbox.damage = 45                     
			combo_step = 1
	
	sword_visual.visible=true
	hitbox.activate()
	
	await get_tree().create_timer(attack_duration).timeout
	
	sword_visual.visible=false
	hitbox.deactivate()
	is_busy=false
	combo_reset_timer=COMBO_WINDOW

func dash_attack() -> void:
	if is_busy:
		return
	is_busy = true
	
	sword_visual.offset_top = -45.0
	sword_visual.offset_bottom = -30.0
	sword_visual.offset_right = 95.0
	hitbox.damage = 35
	hitbox.knockback_force = 260.0 # Lực đẩy văng quái cực mạnh
	
	sword_visual.visible=true
	hitbox.activate()
	await get_tree().create_timer(attack_duration).timeout
	sword_visual.visible=false
	hitbox.deactivate()
	is_busy = false
