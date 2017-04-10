class Trainer
  attr_reader :errs

  def initialize(amount, operator, numbers)
    @counter = 0
    @errs = 0
    @number1 = nil
    @number2 = nil
    @amount = amount
    @numbers = numbers
    @operator = operator

    process_plus if @operator == "+"
    process_minus if @operator == "-"
  end

  def set_numbers
    if @numbers == 1
      if @operator == "+"
        @number1 = rand(1..9)
        @number2 = rand(1..9)
      else
        @number1 = rand(5..9)
        @number2 = rand(1..5)
      end
    end

    if @numbers == 2
      @number1 = rand(10..99)
      @number2 = rand(1..9)
    end

    if @numbers == 3
      if @operator == "+"
        @number1 = rand(10..99)
        @number2 = rand(10..99)
      else
        @number1 = rand(50..99)
        @number2 = rand(10..50)
      end
    end

    if @numbers == 4
      @number1 = rand(100..999)
      @number2 = rand(10..99)
    end

    if @numbers == 5
      if @operator == "+"
        @number1 = rand(100..999)
        @number2 = rand(100..999)
      else
        @number1 = rand(500..999)
        @number2 = rand(100..500)
      end
    end
  end

  def process_plus
     puts "\n*** СЛОЖЕНИЕ ***\n"

     while @counter < @amount
      set_numbers

      puts @number1.to_s + " + " + @number2.to_s + " ="
      right_answer = @number1 + @number2
      your_answer = STDIN.gets.to_i

      give_feedback(right_answer, your_answer)

      @counter += 1
     end
  end

  def process_minus
     puts "\n*** ВЫЧИТАНИЕ ***\n"

     while @counter < @amount
      set_numbers

      puts @number1.to_s + " - " + @number2.to_s + " ="
      right_answer = @number1 - @number2
      your_answer = STDIN.gets.to_i

      give_feedback(right_answer, your_answer)

      @counter += 1
     end
  end

  def give_feedback(right_answer, your_answer)
    if your_answer == right_answer
      puts "верно"
      puts
    else
      puts "НЕТ: " + right_answer.to_s
      puts
      @errs +=1
    end
  end
end
