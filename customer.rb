class Customer


  attr_reader :name, :age, :drunkeness
  attr_accessor :wallet

  def initialize(name, wallet, age, drunkeness)
    @name = name
    @wallet = wallet
    @age = age
    @drunkeness = drunkeness
  end


  def pay_drink(drink)
    @wallet -= drink.price
    @drunkeness += drink.alcohol_level
  end

end
