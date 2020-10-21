require 'account'

RSpec.describe Account do

  describe '#deposit' do
    it 'deposits 1000 into the account' do
      expect{ subject.deposit(1000, "10-01-2012") }.to change{ subject.balance }.by(1000)
    end
  end
  describe '#withdraw' do
    it 'withdraws 500 from the account' do
      expect{ subject.withdraw(500, "14-01-2012") }.to change{ subject.balance }.by(-500)
    end
  end

end
