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

end
