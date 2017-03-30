class Player

  attr_reader :name, :hp

  def initialize(name)
    @name = name
    @hp = 100
  end

  def reduce_hp
    self.hp -= 12
  end

private

attr_writer :hp

end
