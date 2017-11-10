require_relative('pub.rb')
require_relative('food.rb')
require_relative('drink.rb')
require_relative('customer.rb')
require('pp')

@whisky = Drink.new("whisky", 5, 5)
@nannystate = Drink.new("nannystate", 3, 0)
@brewdog = Drink.new("brewdog", 3, 3)
@joker_ipa = Drink.new("joker_ipa", 4, 3)
@drinks = {
	@whisky => 100,
	@nannystate => 90,
	@brewdog => 50,
	@joker_ipa => 20
}

@veggie_burger = Food.new("veggie_burger", 8, 4)
@carrot = Food.new("carrot", 1, 1)
@foods = {
	@veggie_burger => 10, 
	@carrot => 500
}

@pub = Pub.new("Mont Blanc", @drinks, @foods)
@jardine = Customer.new("Jardine", 28, 40)
@billy = Customer.new("Billy", 14, 100)

def stock(item)

end

def drinks_stock
	separator_bold = "=" * 25
	separator = "-" * 25
	puts separator_bold
	puts "Drinks Stock".center(25)
	total = @drinks.reduce(0) {|sum, (key, val)| sum + val}
	puts separator_bold
	puts "Name".ljust(15) + "Quantity".rjust(10)
	puts separator
	for drink, quantity in @drinks
		puts "#{drink.name}".ljust(15) + "#{quantity}".rjust(10)
	end
	puts separator
	puts "Total".ljust(15) + total.to_s.rjust(10)
	puts separator_bold
end

def drinks_value
	separator_bold = "=" * 25
	separator = "-" * 25
	puts separator_bold
	puts "Drinks Value".center(25)
	total = @drinks.reduce(0) {|sum, (key, val)| sum + (val * key.price)}
	puts separator_bold
	puts "Name".ljust(15) + "Value".rjust(10)
	puts separator
	for drink, quantity in @drinks
		puts "#{drink.name}".ljust(15) + "#{quantity * drink.price}".rjust(10)
	end
	puts separator
	puts "Total".ljust(15) + total.to_s.rjust(10)
	puts separator_bold
end
	
# @pub.drinks_value
# @pub.foods_value
# @pub.drinks_stock
# @pub.foods_stock

def foods_stock
	separator_bold = "=" * 25
	separator = "-" * 25
	puts separator_bold
	puts "Food Stock".center(25)
	total = @foods.reduce(0) {|sum, (key, val)| sum + val}
	puts separator_bold
	puts "Name".ljust(15) + "Quantity".rjust(10)
	puts separator
	for food, quantity in @foods
		puts "#{food.name}".ljust(15) + "#{quantity}".rjust(10)
	end
	puts separator
	puts "Total".ljust(15) + total.to_s.rjust(10)
	puts separator_bold
end

def foods_value
	separator_bold = "=" * 25
	separator = "-" * 25
	puts separator_bold
	puts "Foods Value".center(25)
	total = @foods.reduce(0) {|sum, (key, val)| sum + (val * key.price)}
	puts separator_bold
	puts "Name".ljust(15) + "Value".rjust(10)
	puts separator
	for food, quantity in @foods
		puts "#{food.name}".ljust(15) + "#{quantity * food.price}".rjust(10)
	end
	puts separator
	puts "Total".ljust(15) + total.to_s.rjust(10)
	puts separator_bold
end



# print_drinks_stock
# print_foods_stock