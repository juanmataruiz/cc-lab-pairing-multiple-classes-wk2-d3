class Pub

attr_reader :name, :drink, :age_check
attr_accessor :till

  def initialize(name, till, drink, age_check)
    @name = name
    @till = till
    @drink = []
    @age_check = age_check
  end

  def count_drinks()
    @drink.count()
  end

  def buy_drink(drink)
    @drink.push(drink)
  end

  def sell_drink(drink)
    @till += drink.price
  end

  def check_age?(customer)
    return customer.age >= @age_check
  end

end
