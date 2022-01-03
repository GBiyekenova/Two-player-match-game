class Player

  attr_accessor :player
  attr_reader :score

  def initialize(player)
    @player = player
    @score = 3
  end

end

p = Player.new(player1)
puts p

