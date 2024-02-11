extends Control

@onready var onde_ir = $onde_ir
@onready var onde_esta = $onde_esta
@export var locais : Node2D
var popup1 
var popup2
var nomesAreas : Array = []
var loca1
var loca2




# Called when the node enters the scene tree for the first time.
func _ready():
	# add items
	#node locais
	locais = get_node("escola/locais")
	# Itera sobre os filhos do Node2D
	for child in locais.get_children():
		# Verifica se o filho é uma instância de Area2D
		if child is Area2D:
			# Adiciona o nome da área à lista
			nomesAreas.append(child.name)




	add_itens()
	
	popup1 = onde_ir.get_popup()
	popup1.id_pressed.connect(ondeir)
	popup2 = onde_esta.get_popup()
	popup2.id_pressed.connect(ondeesta)
	#connection
	
	
	
# adding itens to dropdown
func add_itens():
	for item in nomesAreas:
		onde_ir.get_popup().add_item(item)
		onde_esta.get_popup().add_item(item)
		



func ondeir(id):
	loca1 = get_node("escola/locais/"+nomesAreas[id]).global_position
	Global.ondeir(loca1)
	print(nomesAreas[id])
	print(loca1)
func ondeesta(id):
	loca2 = get_node("escola/locais/"+nomesAreas[id]).global_position
	Global.ondeesta(loca2)
	print(nomesAreas[id])
	print(loca2)
