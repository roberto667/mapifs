extends Area2D

@onready var nav : NavigationAgent2D = $NavigationAgent2D
@export var local1 : Area2D
@export var local2 : Area2D
@export var onde_ir : OptionButton
var finished = false
# Called when the node enters the scene tree for the first time.
func _ready():
#nav.target_position = local.global_position
	pass



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
#onde esta
	if Global.local2 == 0:
			global_position= local1.global_position

	if Global.local2 == 1:
		global_position = local2.global_position

#onde ir
	if not finished:
		if Global.local1 == 0:
			
			nav.target_position = local1.global_position
			var direction = (nav.get_next_path_position() - global_position).normalized()


		if Global.local1 == 1:
			
			nav.target_position = local2.global_position
			var direction = (nav.get_next_path_position() - global_position).normalized()

			
		

func _on_navigation_agent_2d_navigation_finished():
	finished = true # Replace with function body.
