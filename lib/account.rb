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

  def add_deposit(deposit)
    @balance += deposit.amount
    @transactions << {"date" => deposit.date, "deposit" => deposit.amount, "withdrawal" => 0, "balance" => @balance}
  end

end
