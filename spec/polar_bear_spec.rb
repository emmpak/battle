require 'polar_bear'

describe PolarBear do
  subject(:polar_bear) { described_class.new("PB") }

  it "has a default hp of #{Player::DEFAULT_HP}" do
    expect(polar_bear.hp).to eq Player::DEFAULT_HP
  end

  describe '#reduce_hp' do
    it "reduces polar bear's" do
      expect{ polar_bear.reduce_hp(5) }.to change {polar_bear.hp}.by -5
    end
  end

  describe '#beast_mode' do
    it 'returns the damage points' do
      expect(polar_bear.beast_mode).to eq 30
    end
  end

  describe '#claws' do
    it 'returns the damage points' do
      expect(polar_bear.claws).to eq 10
    end
  end

  describe '#pack' do
    it 'returns the damage points' do
      expect(polar_bear.pack).to eq 15
    end
  end

end
