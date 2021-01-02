class Account
  attr_reader :balance
  def initialize
    @balance = 0
    @statement = Statement.new
  end

  def deposit(amount, date)
    @balance += amount
    @statement.add_action(amount, date, "deposit", @balance)
  end

  def withdraw(amount, date)
    @balance -= amount
    @statement.add_action(amount, date, "withdraw", @balance)
  end

  def print_statement
    @statement.print_statement
  end

end
