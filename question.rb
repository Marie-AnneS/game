
class Question

  attr_reader :number_1, :number_2

  def initialize (current_player)
    @number_1 = rand(1..10)
    @number_2 = rand(1..10)
    @result = @number_1 + @number_2  
    @current_player = current_player
  end
  
  def anwser_question
    puts "#{@current_player.name}, what does #{@number_1} plus #{@number_2} equal?"
    @anwser = gets.chomp    
  end

  def good_anwser?
    if @anwser == @result.to_s
      puts "Bravo"
      return true
    else
      puts "No good "
      return false
    end 
  end
 
end