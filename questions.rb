class Questions

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @ans = @num1 + @num2
  end

  def new_question
    puts "What does #{@num1} + #{@num2} equal?"
  end

  def answer?(answer)
    if @ans == answer
      return true
    else
      return false
    end
  end

end


