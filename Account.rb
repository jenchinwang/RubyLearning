## This is a program mocking consumer banking system!

class Account
  attr_reader :name
  attr_reader :balance
  def initialize(name, balance = 100)
    @name = name
    @balance = balance
  end
  public
  def display_balance(pin_number)
    puts pin_number == pin ? "Balance: $#{@balance}" : pin_error
  end
  def withdraw(pin_number, amount)
    if pin_number == pin
      @balance -= amount
       puts "Accoubt overdrawn!" if @balance < 0 
    else
      puts pin_error
    end
  end
  def deposit(pin_number, amount)
    if pin_number == pin
      @balance += amount
    else
      puts pin_error
    end
  end
  private
  def pin
    @pin = 1234
  end
  def pin_error
    return "Access denied: incorrect PIN."
  end
end

class CheckingAccount < Account
end

class SavingAccount < Account
end

checking_account = CheckingAccount.new("Amber", 100_000)
checking_account.name
checking_account.pin
checking_account.withdraw(1234, 200_000)