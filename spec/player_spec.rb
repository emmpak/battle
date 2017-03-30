require 'player'

describe Player do
  subject(:volkswagen) {described_class.new("volkswagen")}
  subject(:polar_bear) { described_class.new("polar bear") }

  it "returns the name of the player" do
    expect(volkswagen.name).to eq "volkswagen"
  end

  it "has a default hp of #{Player::DEFAULT_HP}" do
    expect(volkswagen.hp).to eq Player::DEFAULT_HP
  end

  it 'attacks the polar bear' do
    expect(polar_bear).to receive(:reduce_hp)
    volkswagen.attack(polar_bear)
  end

  it "reduces polar bear's #{Player::DEFAULT_DAMAGE}hp" do
    expect{volkswagen.attack(polar_bear)}.to change {polar_bear.hp}.by -Player::DEFAULT_DAMAGE
  end
end
