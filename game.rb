require_relative './players'
require_relative './question'

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
# ----- GAME OVER -----
# Good bye!

class Game 

  def initialize
    @player1 = Player.new 'Marie-A'
    @player2 = Player.new 'Etienne'
    @players = [@player1, @player2]
    #@turn = Turn.new(@players)
  end

  def status
     puts '--------- Status ----------'
     
     puts "What does #{@number_1} plus #{@number_2} equal?"
     puts "P1-#{@players[0].name} #{@players[0].curent_live}/3   vs   P2-#{@players[1].name} #{@players[1].curent_live}/3 "
  end

  def run
    the_question = Question.new
    the_question.anwser_question
    the_question.good_anwser?
    # until (game_over?) do
    #   @turn.next_round
    #   puts "-------- Round##{@turn.round} ------------"
    #   current_player = @turn.get_current_player
    #   ennemy_player = @turn.get_ennemy_player(current_player)
    #   current_player.attacks(ennemy_player)
    #   status
    #   sleep 1
    #   puts
    # end

    # end_game

  end

end
