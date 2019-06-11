class Question

  attr_reader :number_1, :number_2

  def initialize 
    @number_1 = rand(1..10)
    @number_2 = rand(1..10)
    @result = @number_1 + @number_2  
  end
  
  def anwser_question
    puts "What does #{@number_1} plus #{@number_2} equal?"
    @anwser = gets.chomp    
  end

  def good_anwser?
    if @anwser == @result.to_s
      puts "Bravo"
    else
      puts "No good"
    end 
  end

 
end