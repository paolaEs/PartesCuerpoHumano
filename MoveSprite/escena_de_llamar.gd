extends Node2D

onready var volver=get_node("volver")
func _ready():
	volver.connect("pressed",self,"regresar")

func regresar():
	get_tree().change_scene("res://nd_Principal.tscn")
