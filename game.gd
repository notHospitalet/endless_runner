extends Node2D

var enemy_template

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	enemy_template = preload("res://enemy.tscn")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_enemies_timer_timeout() -> void:
	var enemy = enemy_template.instantiate()
	add_child(enemy)
	
	enemy.position.y = randi_range(575, 480)
