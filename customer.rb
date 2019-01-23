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



end
