# item_1 = {type: "pencil", brand: "Ticonderoga", color: "yellow", price: 3}
# item_2 = {type: "pen", brand: "Pilot", color: "purple", price: 5}
# item_3 = {:type => "pen", :brand => "Bic", color: "black", :price => 2}

# p "The #{item_1[:brand]} #{item_1[:type]} costs $#{item_1[:price]} and comes in #{item_1[:color]}."

class Item
  attr_reader :type, :brand, :color, :price
  attr_writer :price, :color

  def initialize(input_options)
    @type = input_options[:type]
    @brand = input_options[:brand]
    @color = input_options[:color]
    @price = input_options[:price]
  end

end

# item1 = Item.new("pencil", "Ticonderoga", "yellow", 3)
item1 = Item.new(
  type: "pencil", 
  brand: "Ticonderoga", 
  color: "yellow", 
  price: 3
)

# puts "old price:"
# puts item1.price
# item1.price = 4.50
# puts "new price:"
# puts item1.price
# puts "-----"
# puts "old color:"
# puts item1.color
# item1.color = "purple"
# puts "new color:"
# puts item1.color
