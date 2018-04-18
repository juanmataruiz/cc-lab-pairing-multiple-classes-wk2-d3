require("minitest/autorun")
require("minitest/rg")
require_relative("../pub")
require_relative('../drink')

class PubTest < MiniTest::Test

 def setup
   @pub = Pub.new("FifeArms", 100, [])

   @drink1 = Drink.new("Beer", 3)
   @drink2 = Drink.new("Wine", 5)
   @drink3 = Drink.new("Cider", 2)

 end

 def test_pub_name
   assert_equal("FifeArms", @pub.name)
 end

 def test_pub_till_total
   assert_equal(100, @pub.till)
 end

 def test_pub_drink
   assert_equal([ ], @pub.drink)
 end

 def test_pub_sell_drink
   @pub.sell_drink(@drink1)
   assert_equal(103, @pub.till)
end

 end
