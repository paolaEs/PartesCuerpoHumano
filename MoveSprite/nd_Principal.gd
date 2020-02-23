extends Node2D

onready var spr_godot=get_node("spr_godot")
onready var boton=get_node("boton")
onready var oreja=get_node("oreja")
onready var ojos=get_node("ojos")
onready var boca=get_node("boca")
onready var llamar=get_node("LLAMAR")
func _ready():
	boton.connect("button_down",self,"_on_cabeza_pressed")
	oreja.connect("button_down",self,"_on_oreja_pressed")
	boca.connect("button_down",self,"_on_boca_pressed")
	ojos.connect("button_down",self,"_on_ojos_pressed")
	boca.connect("button_up",self,"stopsoundlip")
	boton.connect("button_up",self,"stopsoundCabeza")
	ojos.connect("button_up",self,"stopsoundeyes")
	oreja.connect("button_up",self,"stopsoundOrejas")
	llamar.connect("pressed",self,"cambiar_de_escena")
	
	
func _on_cabeza_pressed():
	print("cabeza")
	
	get_node("soundCabeza").play()
		
func _on_oreja_pressed():
	print("Oreja")
	get_node("soundOrejas").play()
	
	
func _on_boca_pressed():
	print("Boca")
	get_node("soundBoca").play()

func _on_ojos_pressed():
	print("Ojos")
	get_node("soundOjos").play()
func stopsoundlip():
	get_node("soundBoca").stop()
func stopsoundeyes():
	get_node("soundOjos").stop()
func stopsoundOrejas():
	get_node("soundOrejas").stop()
func stopsoundCabeza():
	get_node("soundCabeza").stop()

func cambiar_de_escena():
	get_tree().change_scene("res://escena_de_llamar.tscn")