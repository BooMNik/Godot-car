extends Spatial


func _on_Timer_timeout():
	GameMain.time += 1
	GameMain.show_time_in_hud()
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
