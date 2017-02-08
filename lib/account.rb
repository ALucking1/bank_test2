require_relative 'deposit'

class Account

  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def add_deposit(deposit)
    @balance += deposit.amount
    @transactions << {"date" => deposit.date, "deposit" => deposit.amount, "withdrawal" => 0, "balance" => @balance}
  end

  def make_withdrawal(withdrawal)
    @balance -= withdrawal.amount
    @transactions << {"date" => withdrawal.date, "deposit" => 0, "withdrawal" => withdrawal.amount, "balance" => @balance}
  end

  def print_transactions
    puts "Transactions".center(50)
    @transactions.each do |hash|
      puts "-----------------".center(50)
        hash.each do |k, v|
        puts "#{k}: #{v}".center(50)
      end
    end
  end

end
