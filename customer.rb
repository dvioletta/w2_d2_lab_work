class Customer

  attr_reader :name, :age
  attr_accessor :wallet, :alcohol_level, :drinks

  def initialize(name, age, wallet)
    @name = name
    @age = age
    @wallet = wallet
    @alcohol_level = 0
    @drinks = []
  end

  def total_wallet()
    return @wallet
  end

  def pay_for_drink(pub)
     price = pub.get_price(drinks)
     @wallet -= price
     return total_wallet
  end

  def buy_drink(pub)
    drink = pub.get_drink(drink)
    @drinks << drink if !drink.nil?
  end

end
