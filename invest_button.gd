extends Button

signal selected_investment_option(price, revenue)

func _on_pressed():
	var price = $"../Price".text
	var revenue = 0
	selected_investment_option.emit(price, revenue)
