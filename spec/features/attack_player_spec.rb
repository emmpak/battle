feature 'attack player' do
  scenario 'attack a player' do
    sign_in_and_play
    click_button "Cheat emissions test!"
    expect(page).to have_content "Volkswagen used Cheat Emissions. It's super effective! Polar Bear -12 HP.
"
  end
end
