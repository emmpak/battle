class Player

  DEFAULT_HP = 100
  DEFAULT_DAMAGE = 12
  attr_reader :name, :hp

  def initialize(name)
    @name = name
    @hp = DEFAULT_HP
  end

  def attack(player)
    player.reduce_hp
  end

  def reduce_hp
    self.hp -= DEFAULT_DAMAGE
  end

private

attr_writer :hp

end
