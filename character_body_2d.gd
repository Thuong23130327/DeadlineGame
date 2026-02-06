extends CharacterBody2D

var toc_do = 300 # Tốc độ chạy

func _physics_process(delta):
	# Lấy hướng bấm phím mũi tên hoặc WASD
	var huong = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	
	# Tính toán vận tốc
	velocity = huong * toc_do
	
	# Ra lệnh di chuyển
	move_and_slide()
