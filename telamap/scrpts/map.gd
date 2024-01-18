extends Control

@onready var onde_ir = $onde_ir
@onready var onde_esta = $onde_esta


var array1 = ["ola", "12"]
var popup1 
var popup2
var array2 = ["ola", "12"]


# Called when the node enters the scene tree for the first time.
func _ready():
	# add items
	add_itens()
	
	popup1 = onde_ir.get_popup()
	popup1.id_pressed.connect(file_menu)
	popup2 = onde_esta.get_popup()
	popup2.id_pressed.connect(File_menu)
	#connection
	
	
	
# adding itens to dropdown
func add_itens():
	for item in array1:
		onde_ir.get_popup().add_item(item)
	for item in array2:
		onde_esta.get_popup().add_item(item)



func file_menu(id):
	Global.Local1(id)
	print(id)
func File_menu(id):
	Global.Local2(id)
	print(id)
