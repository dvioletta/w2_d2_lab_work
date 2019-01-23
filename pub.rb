class Pub

attr_reader :name
attr_writer :total_till

  def initialize(name, till)
    @name = name
    @till = till
    @drinks = []
  end

  def total_till()
    return @till
  end

  def total_drinks()
    return @drinks.length
  end

  def add_drink(drink)
    @drinks << drink
  end

  def get_drink(drink)
    drink = @drinks.pop  #here we can only offer a random drink to the customer
  end

end
