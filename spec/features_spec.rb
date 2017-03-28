require_relative '../app'

describe Battle do
  it 'Checks if homepage says "Testing infrastructure working!"' do
    expect(subject.get).to eq 'Testing infrastructure working!'
  end
end
