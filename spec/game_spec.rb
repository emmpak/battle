require 'game'

describe Game do

subject(:game) { described_class.new( volkswagen, polar_bear ) }
let(:volkswagen) { double(:volkswagen) }
let(:polar_bear) { double(:polar_bear) }

  it 'takes 2 players' do
    expect(game.player1).to eq(volkswagen)
  end

  describe '#attack' do
    it 'attacks player' do
      expect(polar_bear).to receive(:reduce_hp)
      game.attack(polar_bear)
    end
  end

end
