class Drink

attr_reader :name, :price, :alcohol_content

def initialize(name, price, alcohol_content)
  @name = name
  @price = price
  @alcohol_content = alcohol_content
end

def get_price
  return @price
end


end
