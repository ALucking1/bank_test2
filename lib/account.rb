class Account

  attr_accessor :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
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
