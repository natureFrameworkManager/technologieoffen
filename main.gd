extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	$HBoxContainer/CenterContainer/InvestmentOptions.connect("invested", update_upon_investment)

func update_upon_investment(price, revenue):
	var node = Label.new()
	node.text = price
	get_node("HBoxContainer/InvestmentList").add_child(node)
	get_node("HBoxContainer/InvestmentList").print_tree_pretty()
