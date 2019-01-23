require("minitest/autorun")
require("minitest/rg")
require_relative("../drink")
require_relative("../pub")



class TestPub < MiniTest::Test


  def setup
    @pub = Pub.new("Golden Lion", 120)
    @drink_1 = Drink.new("Beer", 3, 2)
    @drink_2 = Drink.new("Cider", 4, 5)
  end

  def test_get_pub_name()
    assert_equal("Golden Lion", @pub.name)
  end

  def test_get_total_till()
    assert_equal(120, @pub.total_till)
  end

  def test_total_drinks()
    assert_equal(0, @pub.total_drinks)
  end

  def test_add_drink_to_pub()
    @pub.add_drink(@drink_1)
    assert_equal(1, @pub.total_drinks)
  end

  def test_get_drink_for_the_customer()
    @pub.add_drink(@drink_1)
    @pub.add_drink(@drink_2)
    @pub.get_drink(@drink_1)
    assert_equal(1, @pub.total_drinks)
  end

end
