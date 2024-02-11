extends Area2D

@onready var nav : NavigationAgent2D = $NavigationAgent2D
var local1 :Vector2 
var local2:Vector2 
var finished = false
# Called when the node enters the scene tree for the first time.
func _ready():
	global_position = Vector2(0,0)
	pass



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
#onde esta
	if Global.Ondeesta != null:
		local2 = Global.Ondeesta
		global_position = local2
		print(local2)

#onde ir
	if not finished:
		if Global.Ondeir != null:
			local1 = Global.Ondeir
			nav.target_position = local1
			var direction = (nav.get_next_path_position() - global_position).normalized()
			print(local1)
