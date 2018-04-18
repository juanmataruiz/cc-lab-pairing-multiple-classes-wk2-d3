require("minitest/autorun")
require("minitest/rg")
require_relative("../pub")
require_relative('../drink')
require_relative("../customer")

class PubTest < MiniTest::Test

 def setup
   @pub = Pub.new("FifeArms", 100, [], 18, 10)

   @customer1 = Customer.new("Davina", 50, 28, 0)
   @customer2 = Customer.new("John", 10, 17, 0)

   @drink1 = Drink.new("Beer", 3, 1)
   @drink2 = Drink.new("Wine", 5, 2)
   @drink3 = Drink.new("Cider", 2, 1)
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

 def test_pub_can_recieve_money
   @pub.receive_money(@drink1)
   assert_equal(103, @pub.till)
 end

 def test_pub_check_age__true
   result = @pub.check_age?(@customer1)
   assert_equal(true, result)
 end

 def test_pub_check_age__false
   result = @pub.check_age?(@customer2)
   assert_equal(false, result)
 end

 def test_sell_drink__allowed
   @pub.sell_drink(@customer1, @drink1)
   assert_equal(103, @pub.till)
   assert_equal(47, @customer1.wallet)
   assert_equal(1, @customer1.drunkeness)
 end

 def test_sell_drink__not_allowed
   @pub.sell_drink(@customer2, @drink1)
   assert_equal(100, @pub.till)
   assert_equal(10, @customer2.wallet)
   assert_equal(0, @customer2.drunkeness)
 end

end
