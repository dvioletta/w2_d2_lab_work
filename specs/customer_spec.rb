require("minitest/autorun")
require("minitest/rg")
require_relative("../drink")
require_relative("../pub")
require_relative("../customer")



class TestCustomer < MiniTest::Test


  def setup
    @customer = Customer.new("Hank", 28, 40)
    @pub = Pub.new("Golden Lion", 120)
    @drink_1 = Drink.new("Beer", 3, 2)
    @drink_2 = Drink.new("Cider", 4, 5)
  end

  def test_get_name()
    assert_equal("Hank", @customer.name)
  end

  def test_get_age()
    assert_equal(28, @customer.age)
  end

  def test_total_wallet()
    assert_equal(40, @customer.total_wallet)
  end

  def test_buy_a_drink()
    @pub.add_drink(@drink_1)
    @pub.add_drink(@drink_2)
    # @pub.get_drink(@drink_1)
    @customer.buy_drink(@pub)
    assert_equal(1, @customer.drinks.length)
  end

end
