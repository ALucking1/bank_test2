require_relative 'deposit'

class Account

  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def show_balance
    @balance
  end

end
