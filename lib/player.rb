class Player
  attr_reader :name, :hp
  DEFAULT_HP = 100

  def initialize(name)
    @name = name
    @hp = DEFAULT_HP
  end

  def attack(player)
    player.deduct_hp(20)
  end

  def deduct_hp(amount)
    @hp -= amount
  end
end