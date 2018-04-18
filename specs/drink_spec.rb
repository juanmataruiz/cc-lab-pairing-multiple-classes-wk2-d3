require("minitest/autorun")
require("minitest/rg")
require_relative("../drink")

class DrinkTest < MiniTest::Test

 def setup
   @drink1 = Drink.new("Beer", 3)

 end

  def test_drink_name
    assert_equal("Beer", @drink1.name)
  end

  def test_drink_price
    assert_equal(3, @drink1.price)
  end


end
