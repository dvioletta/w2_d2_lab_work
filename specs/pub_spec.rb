require("minitest/autorun")
require("minitest/rg")
require_relative("../drink")
require_relative("../pub")



class TestPub < MiniTest::Test


  def setup
    @pub = Pub.new("Golden Lion", 100)
    @drink_1 = Drink.new("Beer", 3, 2)
    @drink_2 = Drink.new("Cider", 4, 5)
    @drink_3 = Drink.new("Wine", 6, 4)
  end

  def test_get_pub_name()
    assert_equal("Golden Lion", @pub.name)
  end

  def test_get_total_till()
    assert_equal(100, @pub.total_till)
  end

  def test_total_drinks()
    assert_equal(0, @pub.total_drinks)
  end

  def test_add_drink_to_pub()
    @pub.add_drink(@drink_1)
    assert_equal(1, @pub.total_drinks)
  end

  def test_get_drink_price()
    @pub.add_drink(@drink_1)
    assert_equal(3, @pub.get_price(@drink_1))
  end

  def test_get_drink_for_the_customer()
    @pub.add_drink(@drink_1)
    @pub.add_drink(@drink_2)
    assert_equal(@drink_1, @pub.get_drink("Beer"))
  end

  def test_get_drink_for_the_customer__add_money_to_till()
    @pub.add_drink(@drink_1)
    @pub.add_drink(@drink_2)
    @pub.add_drink(@drink_3)
    assert_equal(@drink_1, @pub.get_drink("Beer"))
    # assert_equal(103, @pub.total_till)
  end

end
