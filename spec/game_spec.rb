require 'game'

describe Game do

subject(:game) { described_class.new( volkswagen, polar_bear ) }
let(:volkswagen) { double(:volkswagen) }
let(:polar_bear) { double(:polar_bear) }
let(:current_turn) { volkswagen }

  describe '#player1' do
    it 'retrieves the first player' do
      expect(game.player1).to eq(volkswagen)
    end
  end

  describe '#player2' do
    it 'retrieves the second player' do
      expect(game.player2).to eq(polar_bear)
    end
  end

  describe '#attack' do
    it 'attacks player' do
      expect(polar_bear).to receive(:reduce_hp)
      game.attack(polar_bear)
    end
  end

  # describe '#switch' do
  #   it 'switches the players' do
  #     expect(game.switch).to eq [polar_bear, volkswagen]
  #   end
  # end


  describe "#opponent_of" do
    it 'returns the opponent' do
      allow(game).to receive(:current_turn) {volkswagen}
      expect(game.opponent_of(volkswagen)).to eq (polar_bear)
    end
  end

  describe "#switch_turns" do
    it 'switches the turn' do
      expect(game).to receive(:opponent_of).with(current_turn)
      game.switch_turns
    end
  end
end
