class BankAccount

    attr_accessor :balance, :status
    attr_reader :name

    def initialize(name)
        @name, @balance, @status = name, 1000, 'open'

    end

    def deposit(amount)
        self.balance = self.balance + amount
    end

    def withdrawl(amount)
        self.balance = self.balance - amount
    end

    def display_balance
        "Your balance is $#{self.balance}."
    end

    def valid?
        if self.status == 'open' && self.balance > 0
            true
        else
            false
        end
    end

    def close_account
        self.status = 'closed'
    end

end
