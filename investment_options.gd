extends Control

var investment_scene: PackedScene = load("res://investment.tscn")

var images = [
	{
		image = load("res://assets/images/investment_images/90gradschraube-300x300.jpg"),
		descr = "90-Grad Schraube"
	},
	{
		image = load("res://assets/images/investment_images/Tube-Druckluft-300x300.png"),
		descr = "Druckluft aus der Tube"
	},
	{
		image = load("res://assets/images/investment_images/teleskoproehren-300x300.jpg"),
		descr = "verlängerbare Neonröhren"
	},
	{
		image = load("res://assets/images/investment_images/60W-heat-lamp-UVA-font-b-bulb-b-font-Pet-heat-lamp-font-b-light-b-300x300.jpg"),
		descr = "schwarzlicht lampe"
	},
	{
		image = load("res://assets/images/investment_images/67824378_355823232026262_718295922630459392_n-300x300.jpg"),
		descr = "xxx"
	},
	{
		image = load("res://assets/images/investment_images/Tube-Druckluft-300x300.png"),
		descr = "Druckluft aus der Tube"
	},
	]

var game_cycle = 0

func _ready():
	get_options()
	
func get_options():
	var hbc = HBoxContainer.new()
	hbc.name = "hbc"
	add_child(hbc)
	for x in range(3):
		var investment = investment_scene.instantiate()
		investment.get_node("GridContainer/ProductImage").texture = images[game_cycle + x].image
		investment.get_node("GridContainer/Description").text = images[game_cycle + x].descr
		investment.get_node("GridContainer/Price").text ="%s €" % RandomNumberGenerator.new().randi_range(100, 1000)
		investment.get_node("GridContainer/Button").connect("selected_investment_option", reroll, 0)
		hbc.add_child(investment)
	game_cycle =+ 1

func reroll(price, revenue):
	print("uwu -- %s" % price)
	remove_child(get_node("hbc"))
	get_options()
