class ResultPrinter
  def initialize(amount, errs)
    @amount =  amount
    @errs = errs

    print_result
  end

  def print_result
    correct = ((@amount - @errs) * 100) / @amount

    puts "ИТОГИ:"
    puts "Неправильно: " + @errs.to_s + " из " + @amount.to_s
    puts "Правильно: " + correct.to_s + "%"

    puts "ОЦЕНКА: 5" if correct >= 95
    puts "ОЦЕНКА: 4" if correct >= 80 && correct <= 94
    puts "ОЦЕНКА: 3" if correct >= 50 && correct <= 79
    puts "ОЦЕНКА: 2" if correct >= 15 && correct <= 49
    puts "ОЦЕНКА: 1" if correct <= 14
  end
end