class Player

  attr_accessor :player, :score

  def initialize(player)
    @player = player
    @score = 3
  end

  def change_score
    @score -= 1
  end

end

