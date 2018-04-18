class Pub

attr_reader :name, :drink
attr_accessor :till, :age_check, :alcohol_limit

  def initialize(name, till, drink, age_check, alcohol_limit)
    @name = name
    @till = till
    @drink = []
    @age_check = age_check
    @alcohol_limit = alcohol_limit
  end

  def count_drinks()
    @drink.count()
  end

  def check_age?(customer)
    return customer.age >= @age_check
  end

  def sell_drink(customer, drink)
    return if !check_age?(customer)
    return if customer.drunkeness >= @alcohol_limit
    customer.pay_drink(drink)
    receive_money(drink)

    # if (check_age?(customer))
    #   customer.pay_drink(drink)
    #   receive_money(drink)
    # end
  end

  def receive_money(drink)
    @till += drink.price
  end





end
