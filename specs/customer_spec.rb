require("minitest/autorun")
require("minitest/rg")
require_relative("../customer")
require_relative("../pub")
require_relative("../drink")


class CustomerTest < MiniTest::Test


  def setup
    @customer = Customer.new("Davina", 50, 28)
    @drink1 = Drink.new("Beer", 3)

  end

  def test_customer_name
    assert_equal("Davina", @customer.name)
  end

  def test_customer_wallet_amount
    assert_equal(50, @customer.wallet)
  end

  def test_set_customer_buy_drink
    @customer.buy_drgitink(@drink1)
    assert_equal(47, @customer.wallet)
  end



end
