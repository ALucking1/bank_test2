require_relative 'withdrawal'
require_relative 'account'
require_relative 'deposit'

class Action

  def add_deposit(deposit, account)
    account.balance += deposit.amount
    account.transactions << {"date" => deposit.date, "deposit" => deposit.amount, "withdrawal" => 0, "balance" => account.balance}
  end

  def make_withdrawal(withdrawal, account)
    account.balance -= withdrawal.amount
    account.transactions << {"date" => withdrawal.date, "deposit" => 0, "withdrawal" => withdrawal.amount, "balance" => account.balance}
  end

end
