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

  def get_price(drink)
    for drink in @drinks
      return drink.price
    end
  end

  def get_drink(drink_requested)
     for drink in @drinks
       if drink_requested == drink.name
        return drink
       end
         # @till += get_price(drink)
      end
    end

end
