require_relative "lib/trainer"
require_relative "lib/result_printer"

puts "*** ТРЕНАЖЁР УСТНОГО СЧЁТА ***"

puts "\nКакое количество примеров хотите прорешать?"
puts "(введите число:)\n"
amount = STDIN.gets.to_i

puts "\nКакое арифметическое действие будем производить?"
puts "введите:\n\r"
puts "\"+\" - если сложение;"
puts "\"-\" - если вычитание;"
operator = STDIN.gets.chomp

puts "\nС числами какого разряда будем работать?"
puts "введите:\n\r"
puts "\"1\" - если X #{operator} X"
puts "\"2\" - если XX #{operator} X"
puts "\"3\" - если XX #{operator} XX"
puts "\"4\" - если XXX #{operator} XX"
puts "\"5\" - если XXX #{operator} XXX"
numbers = STDIN.gets.to_i

trainer = Trainer.new(amount, operator, numbers)
ResultPrinter.new(amount, trainer.errs)

puts "*** ДО СВИДАНИЯ ***"
