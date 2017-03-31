class PolarBear

  DEFAULT_HP = 100
  attr_reader :hp, :name

  def initialize(name)
    @name = name
    @attacks = {beast_mode: 30, claws: 10, pack: 15}
    @hp = DEFAULT_HP
  end

  def reduce_hp(amount=10)
    self.hp -= amount
  end

  def beast_mode
    attacks[:beast_mode]
  end

  def claws
    attacks[:claws]
  end

  def pack
    attacks[:pack]
  end

  private
  attr_reader :attacks
  attr_writer :hp

end
