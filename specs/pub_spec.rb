require("minitest/autorun")
require("minitest/rg")
require_relative("../drink")
require_relative("../pub")



class TestPub < MiniTest::Test


  def setup
    @pub = Pub.new("Golden Lion", 120)
  end

  def test_get_pub_name()
    assert_equal("Golden Lion", @pub.name)
  end

end
