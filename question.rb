class Question

  def initialize
    @@num1 = rand(1..20)
    @@num2 = rand(1..20)
    @@correct_answer =  @@num1 + @@num2
    @@question = "#{@@num1} + #{@@num2} is? "
  end

  def get_question()
    return @@question
  end

  def get_answer()
    return @@correct_answer
  end
end

