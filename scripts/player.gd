extends CharacterBody2D

# ==============================================================================
# THÊM CƠ CHẾ NHẢY (JUMP)
# Kiến trúc:
# - Config:     Thêm JUMP_VELOCITY (Lực nhảy)
# - Controller: Bắt phím Space (ui_accept)
# - Service:    Kiểm tra điều kiện is_on_floor() rồi gán velocity.y
# - Repository: move_and_slide() thực thi đưa nhân vật bay lên rồi rơi xuống
# ==============================================================================
@onready var weapon: BaseWeapon = $Visual/WeaponDolorosa
@export var max_health: int =100
var current_health: int =100
@onready var hurtbox: Hurtbox = $HurtBox
# [SERVICE - CONFIG]: Các hằng số vật lý
const SPEED = 280.0           # Tốc độ chạy ngang
const GRAVITY = 980.0         # Trọng lực kéo rơi xuống đất
const JUMP_VELOCITY = -420.0  # Lực bật nhảy lên cao (Số ÂM vì trục Y hướng lên trời là ÂM)
const MAX_JUMP = 2
var JUMP_COUNT: int = 0
var facing_direction: int = 1
const DASH_SPEED = 650.0
const DASH_DURATION = 0.2
const DASH_COOLDOWN = 0.4
var is_dashing: bool = false
var can_dash: bool = true

func _physics_process(delta: float) -> void:
	# 1. [TRỌNG LỰC]: Nếu đang ở trên không trung thì kéo rơi xuống đất
	if is_dashing:
		if Input.is_action_just_pressed("attack"):
			weapon.dash_attack()
		velocity.x = facing_direction*DASH_SPEED
		velocity.y = 0
		move_and_slide()
		return
	if not is_on_floor():
		velocity.y += GRAVITY * delta
	else:
		JUMP_COUNT = 0
	# 2. [CONTROLLER + SERVICE - NHẢY]: Bắt sự kiện bấm phím Space
	# - Input.is_action_just_pressed("ui_accept"): Hứng đúng khoảnh khắc ngón tay VỪA BẤM Space
	# - is_on_floor(): ĐIỀU KIỆN NGHIỆP VỤ - Chỉ cho phép nhảy khi chân đang chạm đất!
	if Input.is_action_just_pressed("jump") and JUMP_COUNT < MAX_JUMP:
		velocity.y = JUMP_VELOCITY
		JUMP_COUNT +=1

	# 3. [DI CHUYỂN NGANG]: Bắt phím A / D
	var direction = Input.get_axis("move_left", "move_right")
	velocity.x = direction * SPEED
	if direction !=0:
		facing_direction = int(direction)
		$Visual.scale.x=facing_direction
		
	if Input.is_action_just_pressed("attack"):
		weapon.attack()
	if Input.is_action_just_pressed("dash"):
		start_dash()
	# 4. [COMMIT]: Thực thi chuyển động trong game
	move_and_slide()
	
func start_dash()-> void:
	if not can_dash or is_dashing:
		return
	is_dashing = true
	can_dash = false
	$Visual.modulate.a = 1.0
	
	if hurtbox:
		hurtbox.set_deferred("monitorable", false) 
	await get_tree().create_timer(DASH_DURATION).timeout
	if hurtbox:
		hurtbox.set_deferred("monitorable", true)
	
	is_dashing = false
	$Visual.modulate.a = 1.0
	velocity.x = 0 # Vận tốc của nhân vật cần chuyển về 0 để k bị trượt
	await get_tree().create_timer(DASH_COOLDOWN).timeout
	can_dash=true

func _ready()->void:
	current_health = max_health
	if hurtbox:
		hurtbox.hit_received.connect(_on_hit_received)

func _on_hit_received(damage: int, knockback_force: float, sin_amout: float) -> void:
	current_health -= damage
	print("💔 HIỆP SĨ BỊ TRÚNG ĐÒN! Mất ", damage, " máu! Còn lại: ", current_health)
	$Visual.modulate = Color(1.0, 0.3, 0.3)
	await get_tree().create_timer(0.1).timeout
	$Visual.modulate = Color(1.0, 1.0, 1.0)
