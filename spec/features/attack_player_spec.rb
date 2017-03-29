feature 'attack player' do
  scenario 'attack a player' do
    sign_in_and_play
    click_link "Cheat emissions test!"
    expect(page).to have_content "Gas everywhere. Polar Bear -12HP"
  end
end
