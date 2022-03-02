# item_1 = {type: "pencil", brand: "Ticonderoga", color: "yellow", price: 3}
# item_2 = {type: "pen", brand: "Pilot", color: "purple", price: 5}
# item_3 = {:type => "pen", :brand => "Bic", color: "black", :price => 2}

# p "The #{item_1[:brand]} #{item_1[:type]} costs $#{item_1[:price]} and comes in #{item_1[:color]}."

class Item
  def initialize(input_type, input_brand, input_color, input_price)
    @type = input_type
    @brand = input_brand
    @color = input_color
    @price = input_price
  end

  def type
    @type
  end

  def brand
    @brand
  end

  def color
    @color
  end

  def price
    @price
  end

  def price=(input_price)
    @price = input_price
  end

  def color=(input_color)
    @color = input_color
  end

end

item1 = Item.new("pencil", "Ticonderoga", "yellow", 3)

# p item1.price
# item1.price = 4.50
# p item1.price

p item1.color
item1.color = "purple"
p item1.color