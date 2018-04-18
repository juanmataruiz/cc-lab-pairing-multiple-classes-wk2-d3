require("minitest/autorun")
require("minitest/rg")
require_relative("../customer")
require_relative("../pub")
require_relative("../drink")


class CustomerTest < MiniTest::Test


  def setup
    @customer = Customer.new("Davina", 50, 28, 0)
    @drink1 = Drink.new("Beer", 3, 1)

  end

  def test_customer_name
    assert_equal("Davina", @customer.name)
  end

  def test_customer_wallet_amount
    assert_equal(50, @customer.wallet)
  end

  def test_customer_drunkenness
    assert_equal(0, @customer.drunkeness)
  end

  def test_set_customer_buy_drink
    @customer.pay_drink(@drink1)
    assert_equal(47, @customer.wallet)
    assert_equal(1, @customer.drunkeness)
  end







end
