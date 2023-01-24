class Questions
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @ans = @num1 + @num2
  end

  def new_question
    puts "What does #{@num1} + #{@num2} equal?"
  end
end

test = Questions.new
test.new_question
