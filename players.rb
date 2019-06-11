class Player

  attr_reader :name, :live
  attr_accessor :curent_live

  def initialize name
    @name = name
    @live = 3
    @curent_live = 3
  end
end