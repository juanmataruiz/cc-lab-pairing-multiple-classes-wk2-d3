class Pub

attr_reader :name, :drink
attr_accessor :till

  def initialize(name, till, drink)
    @name = name
    @till = till
    @drink = []
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

end
