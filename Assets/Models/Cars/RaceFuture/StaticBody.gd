extends StaticBody


var collided = false

func _physics_process(delta):
	if collided:
		# Превращаем StaticBody в RigidBody
		var rigidbody = RigidBody.new()
		rigidbody.transform = self.transform
		get_parent().add_child(rigidbody)
		get_parent().remove_child(self)
		rigidbody.add_child(self) #добавляем StaticBody как дочерний узел RigidBody
		collided = false

func _on_StaticBody_body_entered(body):
	if body.is_in_group("res://Scenes/"):
		# Столкновение с нужной группой объектов
		collided = true
