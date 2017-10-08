class Guest

  def initialize(name)
    @name = name
    @money = 0
  end

  def name
    return @name
  end

  def add_money(integer_amount)
    @money += integer_amount
    return @money 
  end


end
