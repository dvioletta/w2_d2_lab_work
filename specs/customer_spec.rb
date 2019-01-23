require("minitest/autorun")
require("minitest/rg")
require_relative("../drink")
require_relative("../pub")
require_relative("../customer")



class TestCustomer < MiniTest::Test


  def setup
    @customer = Customer.new("Hank", 28, 40)

  end

  def test_get_name()
    assert_equal("Hank", @customer.name)
  end

  def test_get_age()
    assert_equal(28, @customer.age)
  end



end
