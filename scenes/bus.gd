extends RigidBody2D

signal eaten

func _ready():
	connect("eaten", Callable(self, "_on_bus_eaten"))


func _integrate_forces(state: PhysicsDirectBodyState2D) -> void:
	var contact_count = state.get_contact_count()
	for i in range(contact_count):
		var collider = state.get_contact_collider_object(i)
		if collider is CharacterBody2D:
			print("Collided with CharacterBody2D:")
			emit_signal("eaten")
			destroy()


func destroy():
	queue_free()
