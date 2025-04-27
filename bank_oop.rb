class InsufficientFundsError < StandardError
  attr_accessor :balance, :amount

  def initialize(balance, amount)
    @balance = balance
    @amount = amount
    super("Недостаточно средств! Попытка снять: #{amount}. Текущий баланс: #{balance}")
  end
end

class Account
  attr_accessor :balance, :owner

  def initialize(owner, balance = 0)
    @balance = balance
    @owner = owner
  end

  def deposit(amount)
    raise ArgumentError, "Сумма должна быть положительной" unless amount.positive?
    @balance += amount
    puts "Баланс пополнен на сумму: #{amount} рублей. #{current_balance}"
  end

  def withdraw(amount)
    raise ArgumentError, "Сумма должна быть положительной" unless amount.positive?

    if amount > @balance
      raise InsufficientFundsError.new(@balance, amount)
    end

    @balance -= amount
    puts "Со счета снято: #{amount} рублей. #{current_balance}"
  end

  def transfer(amount, target_account)
    raise ArgumentError, "Сумма должна быть положительной" unless amount.positive?
    raise ArgumentError, "Целевой аккаунт не существует" unless target_account.is_a?(Account)

    tax = (amount * 0.02).round(2)
    total_amount = amount + tax

    if total_amount > @balance
      raise InsufficientFundsError.new(@balance, amount)
    end

    @balance -= total_amount
    target_account.deposit(amount)

    { amount: amount, tax: tax, new_balance: @balance }
  end

  def current_balance
    "Текущий баланс: #{@balance} рублей."
  end

  def account_info
    puts "Account: owner: #{@owner}, balance: #{@balance} рублей."
  end
end

# Создаем два аккаунта
account1 = Account.new("Alice", 500)
account2 = Account.new("Bob", 100)

# Выводим начальную информацию
account1.account_info
account2.account_info

puts "\n--- Пополнение ---"
account1.deposit(200) # Пополняем счёт Alice

puts "\n--- Снятие денег ---"
account1.withdraw(100) # Снимаем деньги

puts "\n--- Перевод денег ---"
account1.transfer(300, account2) # Переводим деньги с Alice на Bob

# Выводим итоговую информацию
puts "\n--- Итог ---"
account1.account_info
account2.account_info

puts "\n--- Попытка снять больше, чем есть на счете ---"
begin
  account1.withdraw(1000) # Попытка снять слишком много
rescue InsufficientFundsError => e
  puts "Ошибка: #{e.message}"
end
