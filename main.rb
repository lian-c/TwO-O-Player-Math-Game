require './players'
require './questions'

class Game
  def initialize
    @player1 = Person.new("Player 1")
    @player2 = Person.new("Player 2")
    @current_player = @player1 
  end

  def change_player
    if @current_player == @player1
      @current_player = @player2
      else
      @current_player = @player1
      end
  end

  def play
    while @player1.lives > 0 && @player2.lives > 0 do
      puts "----#{@current_player.name}----"
      question = Questions.new
      question.new_question
      answer_input = gets.chomp.to_i
     if question.answer?(answer_input)
        puts "You are right on!"
      else
        puts "Opps.. that's not it, chief."
        @current_player.lose_life
      end
      puts " " #better spacing
      current_score
      puts " "
      change_player
    end
    end_game
    end # play


  def current_score
    puts "The lives are currently P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
    if @player1.lives == 1 || @player2.lives == 1
      puts "Be careful #{@current_player.name}, you only have one more chance before the other player wins!!"
    end 
    if @current_player.lives != 0 
    puts "\n---------NEW TURN------------"
    end
  end

  def end_game
    puts "-----------The game has now ended!------------"
    if @player1.lives == 0
      puts "\n#{@player1.name} loses!"
    elsif @player2.lives == 0
      puts "\n#{@player2.name} loses!"
    end
    puts "#{@current_player.name} wins with a score of #{@current_player.lives}/3"
    puts "\n---------GAME OVER!-------------"
  end
  

end

game = Game.new
game.play