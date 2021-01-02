class Statement
  def initialize
    @actions = []
  end

  def add_action(amount, date, operation, balance)
    @actions << {
      date: date,
      amount: sprintf('%.2f', amount),
      operation: operation,
      balance: sprintf('%.2f', balance)
    }
  end

  def print_statement
    statement = []
    @actions.each do |action|
      statement.unshift("#{action[:date].to_s} ||" +
                    " #{action[:amount] if action[:operation] == 'deposit'} ||" +
                    " #{action[:amount] if action[:operation] == 'withdraw'} ||" +
                    " #{action[:balance].to_s}")
    end

    statement.unshift("date || credit || debit || balance")
    statement
  end

end
