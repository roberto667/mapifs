extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_animation_player_animation_finished(anim_name):
	if anim_name == "fade_in":
		$AnimationPlayer.play("fade_out") 
	if anim_name == "fade_out":
		get_tree().change_scene_to_file("res://telamap/map.tscn") # Replace with function body.
