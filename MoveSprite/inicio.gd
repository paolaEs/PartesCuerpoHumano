extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var boton1=get_node("mujer")
# Called when the node enters the scene tree for the first time.
func _ready():
	boton1.connect("pressed",self,"llamar_escena")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func llamar_escena():
  pass
