class Game
  attr_reader :current_turn, :opponent
  def initialize(player1, player2)
    @players = [player1, player2]
    @current_turn = player1
  end

  def player1
    @players.first
  end

  def player2
    @players.last
  end

  def attack(player)
    player.deduct_hp(20)
  end

  def switch_turns
    @current_turn = opponent
  end

  def opponent
    @players.select {|name| name != @current_turn }.first
  end

  private
  attr_reader :players

end