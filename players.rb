class Person
  attr_accessor :name, :lives  
  
  def initialize(name, lives=3)
    @name = name
    @lives = lives
  end
end

player1 = Person.new("Player 1")
player2 = Person.new("Player 2")
p player1.name
p player2.name
