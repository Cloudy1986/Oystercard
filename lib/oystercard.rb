class Oystercard
  MAXIMUM_BALANCE = 90
  attr_reader :balance, :amount

  def initialize
    @balance = 0
  end

  def top_up(amount)
    fail "Max. balance #{MAXIMUM_BALANCE} exceeded" if (@balance + amount) > MAXIMUM_BALANCE
    @balance += amount
  end

  def deduct(amount)
    @balance -= amount
  end

end
