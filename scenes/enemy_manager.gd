extends Node

@export var vehicle: PackedScene
@onready var spawn_timer = $SpawnTimer

func _on_spawn_timer_timeout():
	var vehicle_instance = vehicle.instantiate()
	vehicle_instance.eaten.connect(_stuffed)
	add_child(vehicle_instance)
	print("vehicle spawned")


func _stuffed():
	print("stuffed")
	var pred = get_parent().get_node("MacroPred")
	pred.animations.play("gulp")
