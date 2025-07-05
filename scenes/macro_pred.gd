extends CharacterBody2D
@onready var animations = $AnimationPlayer


func _ready():
	#var bus = get_parent().get_node("Bus")
	#bus.connect("eaten", Callable(self, "_on_bus_eaten"))
	pass


func _on_bus_eaten():
	print("Bus has been eaten! Responding in MacroPred.")
	animations.play("gulp")


func _on_animation_player_animation_finished(anim_name):
	if anim_name == "gulp":
		print("finished gulp animation")
		animations.play("still")
