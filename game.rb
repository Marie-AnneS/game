require_relative './players'
require_relative './question'
require 'pry'

# Player 1: What does 5 plus 3 equal?
# > 9
# Player 1: Seriously? No!
# P1: 2/3 vs P2: 3/3
# ----- NEW TURN -----
# Player 2: What does 2 plus 6 equal?
# > 8
# Player 2: YES! You are correct.
# P1: 2/3 vs P2: 3/3
# ----- NEW TURN -----
# ... some time later ...
# Player 1 wins with a score of 1/3


class Game 

  def initialize
    @player1 = Player.new 'P1 - Marie-A'
    @player2 = Player.new 'P2 - Yujie'
    @players = [@player1, @player2]
  end

  def score
    puts
    puts "Score: #{@player1.name} #{@player1.live}/3   vs   #{@player2.name} #{@player2.live}/3 "
    puts
  end
  
  def end_game
    puts "#{@players[0].name} wins with a score of #{@players[0].live}/3"
    puts "----- GAME OVER ----- \n Good bye!"

  end
  def run
    until (@players[0].live == 0 || @players[1].live == 0) do
    puts "------------------------------"
    puts "-------- NEW TURN ------------"
    the_question = Question.new(@players[0])  
    the_question.answer_question
    if !the_question.good_answer?
      @players[0].set_live
    end
    @players.rotate!
    score

    end

    end_game
  end

end
