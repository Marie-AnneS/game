class Player

  attr_reader :name
  attr_accessor :live

  def initialize name
    @name = name
    @live = 3
  end

  def set_live
      @live -= 1
      #puts "nombre de vie retant: #{@live}"   
  end  

end