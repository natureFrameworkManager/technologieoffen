extends Control

var investment_scene: PackedScene = load("res://investment.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	get_options()

func get_options():
	for _x in range(5):
		var investment = investment_scene.instantiate()
		$HBoxContainer.add_child(investment)
