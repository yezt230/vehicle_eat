extends RigidBody2D
#
#const GRAVITY: float = 150.0
#@onready var on_floor_label = $OnFloorLabel
#@onready var on_floor_value_str: String = ""
#@onready var on_floor_switch: bool = false
#
#func _ready():
	#floor_stop_on_slope = false
#
#
#func _process(delta):
	#if is_on_floor():
		#on_floor_value_str = "true"
		#if not on_floor_switch:
			#on_floor_switch = true
	#else:
		#on_floor_value_str = "false"
		#if on_floor_switch:
			#on_floor_switch = false
	#on_floor_label.text = "is on floor: " + on_floor_value_str
#
#
#func _physics_process(delta):
	#velocity.y += delta * GRAVITY
	#
	#var motion = velocity * delta
	#
	#if on_floor_switch:
		#velocity.x = velocity.y
	#
	#velocity.x -= velocity.y
	#move_and_slide()
