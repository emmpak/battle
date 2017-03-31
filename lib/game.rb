require_relative 'player'

class Game

attr_reader :players

  def initialize(player1, player2)
    @players = [player1, player2]
  end

  def player1
    @players.first
  end

  def player2
    @players.last
  end

  def current_turn
    player1
  end

  def attack(player)
    player.reduce_hp
  end

  def switch
    players.reverse!
  end

end
