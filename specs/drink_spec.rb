require("minitest/autorun")
require("minitest/rg")
require_relative("../drink")

class DrinkTest < MiniTest::Test

 def setup
   @drink1 = Drink.new("Beer", 3)
   @drink2 = Drink.new("Wine", 5)
 end

  def test_drink_name
    assert_equal("Beer", @drink1.name)
  end

def test_drink_price
  assert_equal(5, @drink2.price)
end


end
