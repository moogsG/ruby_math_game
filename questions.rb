class MathQuestions
  # Creates questions
  def initialize
    @num1 = rand 20
    @num2 = rand 20
  end

  def question
    "What is #{@num2} + #{@num1}?"
  end

  def sum
    @num1 + @num2
  end

end
